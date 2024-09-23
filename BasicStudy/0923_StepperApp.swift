import SwiftUI

struct StepperApp: View {
    // @State 변수로 현재 값을 관리
    @State private var currentValue = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("GDC on Campus : 추석 Stepper APP 과제")
                .font(.footnote)
            
            Text("현재 값: \(currentValue)")
                .font(.largeTitle)
            
            // Stepper: 최소값은 0, 최대값은 100
            Stepper(value: $currentValue, in: 0...100) {
                Text("Stepper")
            }
            
            Button(action: {
                print("현재 값은 \(currentValue)입니다.")
            }) {
                Text("현재 값 출력")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            if currentValue % 2 == 0 {
                Text("짝수입니다.")
                    .foregroundColor(.green)
            } else {
                Text("홀수입니다.")
                    .foregroundColor(.red)
            }
        }
        .padding()
        // 10을 기준으로 배경색 변경
        .background(currentValue < 10 ? Color.yellow : Color.brown)
    }
}

struct StepperApp_Previews: PreviewProvider {
    static var previews: some View {
        StepperApp()
    }
}

#Preview {
    StepperApp()
}
