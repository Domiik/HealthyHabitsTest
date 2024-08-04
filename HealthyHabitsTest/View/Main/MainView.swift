//
//  MainView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI


struct MainView: View {
    @StateObject private var viewModel = MainViewModel()

    @State private var dragOffset: CGSize = .zero
    @State private var currentTextOffset: CGSize = .zero
    @State private var newTextOffset: CGSize = .zero
    @State private var isSwiping: Bool = false
    @State private var isNextText: Bool = true

    var body: some View {
        switch viewModel.state {
        case .idle:
            Color.clear.onAppear {
                viewModel.getText()
                viewModel.getColor()
            }
        case .loading:
            Color.clear.onAppear { }
        case .end:
            NavigationView {
                ZStack {
                    // Задний фон
                    viewModel.backgroundColor
                        .edgesIgnoringSafeArea(.all)

                    // Центральное содержимое (тексты)
                    Text(viewModel.getCurrentText())
                        .font(AppFont.largeTitle.font)
                        .foregroundColor(Color(asset: .whiteText))
                        .offset(y: currentTextOffset.height + dragOffset.height)
                        .animation(.easeInOut(duration: 0.5), value: currentTextOffset)
                        .padding(.horizontal)
                    
                    // Следующий или предыдущий текст
                    if isSwiping {
                        Text(isNextText ? viewModel.getNextText() : viewModel.getPreviousText())
                            .font(AppFont.largeTitle.font)
                            .foregroundColor(Color(asset: .whiteText))
                            .offset(y: newTextOffset.height + dragOffset.height)
                            .animation(.easeInOut(duration: 0.5), value: newTextOffset)
                    }

                    // Кнопка настроек в правом верхнем углу
                    VStack {
                        HStack {
                            Spacer()
                            NavigationLink(destination: SettingsView()
                                .onAppear {
                                    viewModel.getText()
                                    viewModel.getColor()
                                }) {
                                    Image(system: .setting)
                                        .font(AppFont.title1.font)
                                        .foregroundColor(Color(asset: .whiteText))
                                        .padding()
                                }
                                .buttonStyle(PlainButtonStyle())
                        }
                        Spacer()
                    }
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            dragOffset = value.translation
                            isSwiping = true
                            isNextText = dragOffset.height < 0
                            if isNextText {
                                newTextOffset = CGSize(width: 0, height: UIScreen.main.bounds.height)
                            } else {
                                newTextOffset = CGSize(width: 0, height: -UIScreen.main.bounds.height)
                            }
                        }
                        .onEnded { value in
                            if dragOffset.height < -50 {
                                // Свайп вверх
                                currentTextOffset = CGSize(width: 0, height: -UIScreen.main.bounds.height)
                                newTextOffset = .zero
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    viewModel.showNextText()
                                    resetOffsets()
                                }
                            } else if dragOffset.height > 50 {
                                // Свайп вниз
                                currentTextOffset = CGSize(width: 0, height: UIScreen.main.bounds.height)
                                newTextOffset = .zero

                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    viewModel.showPreviousText()
                                    resetOffsets()
                                }
                            } else {
                                resetOffsets()
                            }
                            dragOffset = .zero
                            isSwiping = false
                        }
                )
            }
        }
    }

    private func resetOffsets() {
        currentTextOffset = .zero
        newTextOffset = .zero
    }
}


