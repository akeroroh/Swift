//
//  SwiftUIView.swift
//  AnneApp
//
//  Created by 진아현 on 6/29/25.
//


import SwiftUI

//MARK: - TEXT 실습
//struct SwiftUIView: View {
//    var body: some View {
//        Text("Hello, World!dfsdfadfasdfasdfasdfasfasdfasdfadfadf")
//            .font(.largeTitle) /* 폰트를 largeTitle로 바꾼다 */
//            .foregroundStyle(Color.red)  /* 글자색을 빨간색으로 바꾼다 */
//            .underline() /* 밑줄을 추가한다 */
//            .strikethrough(true, color: Color.black) /* 중앙선을 넣고 선 색깔을 검정색으로 한다 */
//            .lineLimit(nil) /* 줄 최대 갯수 넘어가면 ...으로 표시됨 */
//            .kerning(1.5) /* 자간 간격 */
//            .lineSpacing(2.5) /* 줄글 간격 */
//            .padding() /* 텍스트 박스의 패딩 */
//            .overlay(content: {
//                RoundedRectangle(cornerRadius: 10) /* 모서리가 10으로 둥근 사각형 */
//                    .fill(Color.clear) /* 색깔은 투명으로 */
//                    .stroke(Color.black, style: .init(lineWidth: 1)) /* 1크기의 검은색 테두리 */
//            }) /* 텍스트박스의 오버레이 겹쳐서 나타내는 거 */
//            .dynamicTypeSize(.large) /* 시스템 설정이 바꿔어도 무조건 large로 */
//    }
//}

//MARK: - IMAGE 실습
//struct SwiftUIView: View {
//    var body: some View {
//        Image(systemName: "eraser.fill")
//            .resizable() /* image의 크기가 바꿀수 있는 모드로 전환시켜줌 */
//            .frame(width: 300, height: 300) /* 너비 300 높이 300의 크기로 전환 */
//            .aspectRatio(contentMode: .fit) /*
//                                             fit : scaledToFit()과 같음. 이미지의 비율은 유지하면서 이미지의 전체를 보여준다
//                                             fill : 이미지의 비율은 유지하면서 이미지가 짤려도 무시함
//                                             nil : 비율이 왜곡됨 -> 이미지가 찌그러질수도
//                                             */
//            .background() {
//                Circle() /* 원으로 */
//                    .fill(Color.green) /* 초록으로 채움 */
//                    .frame(width: 250, height: 250) /* 너비 250, 높이 250 */
//                    .border(Color.black) /* 원 구역의 테두리 원의 테두리를 할려면 overlay를 사용해야함 (왜이럼) */
//            } /* 이미지의 뒷 배경 */
//            .border(Color.red) /* 이미지 테두리 빨간색으로 */
//            .clipShape(RoundedRectangle(cornerRadius: 100)) /* 이미지구역을 100 정도의 모서리가 둥근 사각형으로 자름 */
//            .foregroundStyle(Color.red) /* 이미지 빨강으로 채움, style foreground content like text, shapes, and template images (including symbols) */
//    }
//}

//MARK: - BUTTON 실습
//struct SwiftUIView: View {
//    var body: some View {
//        //MARK: - 1. 기본 버튼
////        Button("나를 클릭해보세요!") {
////            print("하하하하호호호호")
////        }
//
//        //MARK: - 2. CUSTOM 버튼
//        Button(action: {
//            print("Button Clicked!")
//        }) {
//            Text("Tap Here")
//                .padding()
//                .background(Color.blue)
//                .foregroundColor(.white)
//                .cornerRadius(10)
//        }
//    }
//}

//MARK: - LABEL 실습
//struct SwiftUIView: View {
//    var body: some View {
//        Button(action: {
//            print("레이블을 클릭했습니다.")
//        }, label: {
//            Label(title: {
//                Text("레이블 내부 텍스트입니다.")
//            }, icon: {
//                Image(systemName: "rectangle.portrait.and.arrow.right.fill")
//                    .imageScale(.large)
//            })
//            .labelStyle(.titleAndIcon)
//        })
//    }
//}

//MARK: - STACK 실습
struct SwiftUIView: View {
    var isLoggedIn: Bool = true
    
    var body: some View {
        //MARK: - 1. VSTACK
//        VStack(alignment: .listRowSeparatorLeading, spacing: 10) {
//            Text("첫 번째 요소")
//                .font(.title)
//            Spacer()
//            Text("두 번째 요소")
//                .font(.headline)
//            Text("세 번째 요소")
//                .font(.subheadline)
//        }
        
        //MARK: - 2. HSTACK
//        HStack(alignment: .top, spacing: 40) {
//            Image(systemName: "star.fill")
//                .resizable()
//                .frame(width: 200, height: 200)
//            Spacer()
//            Text("즐겨찾기")
//                .font(.headline)
//        }
//        .padding(10)
        
        //MARK: - 3. ZSTACK
//        ZStack(alignment: .bottomLeading) {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 200, height: 200)
//            Spacer() /* 효과 없음! */
//            Text("중앙 텍스트")
//                .font(.title)
//                .foregroundStyle(.white)
//        }
        
        //MARK: - 4. RETURN 사용 경우
        if isLoggedIn {
            VStack {
                Text("환영합니다!")
                    .font(.title)
                Text("SwiftUI 앱에 로그인되었습니다.")
            }
        } else {
            VStack {
                Text("로그인이 필요합니다.")
                    .font(.title)
                Text("로그인하기")
            }
        } /* 없어도 잘 되는디? */
    }
}

//#Preview {
//    SwiftUIView()
//}

struct SwiftUIView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            SwiftUIView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
