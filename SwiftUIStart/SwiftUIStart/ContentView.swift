//
//  ContentView.swift
//  SwiftUIStart
//
//  Created by 樊康鹏 on 2023/11/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Stack 三大布局方式  VStack  HStack ZStack
        
        //VStack 垂直排列
        
//        VStack 支持三种对齐方式，默认使用居中对齐：
//
//        .leading：左对齐
//        .trailing：右对齐
//        .center：居中对齐
        
        //spacing  行间距
        /*
        VStack(alignment: .leading,spacing:20){
            Text("高级会员").padding(5).font(.headline).foregroundColor(.blue)
                    Divider()
                    Text("无限制账户").padding(.vertical, 5)
                    Text("币种切换，自动计算汇率").padding(.vertical, 5)
                    Text("价格自动更新").padding(.vertical, 5)
                    Text("云端数据同步").padding(.vertical, 5)
                    Text("专属背景皮肤").padding(.vertical, 5)
                }
        .foregroundColor(.red)
        
         */
       //HStack  将内部子视图排列在水平方向上
        
//        HStack 支持五种对齐方式，默认使用居中对齐：
//
//        .top：左顶部对齐
//        .bottom：底部对齐
//        .center：居中对齐
//        .firstTextBaseline：基于第一行文本的基线对齐
//        .lastTextBaseline：基于最后一行文本的基线对齐
        /*
        VStack{
            HStack(alignment: .center){
                Text("高级会员").font(.headline).foregroundColor(.blue)
                        Divider()
                        Text("无限制账户")
                        Text("币种切换，自动计算汇率")
                        Text("价格自动更新")
                        Text("云端数据同步")
                        Text("专属背景皮肤")
                    }
            .foregroundColor(.red)
            
            HStack(alignment: .firstTextBaseline){
                Text("高级会员").font(.headline).foregroundColor(.blue)
                        Text("无限制账户")
                        Text("币种切换，自动计算汇率")
                        Text("价格自动更新")
                        Text("云端数据同步")
                        Text("专属背景皮肤")
                    }
            .foregroundColor(.white)
            
            HStack(alignment: .lastTextBaseline){
                Text("高级会员").font(.headline).foregroundColor(.blue)
                        Text("无限制账户")
                        Text("币种切换，自动计算汇率")
                        Text("价格自动更新")
                        Text("云端数据同步")
                        Text("专属背景皮肤")
                    }
            .foregroundColor(.black)
        }
        */
        //ZStack 主要用于将内部子视图在 Z 轴上排列，其特点是对于内部的连续子视图，都会分配一个比前一个子视图优先级更高的 Z 轴值，也就是，越在后面出现的子视图，越会显示在“前”。
        let colors: [Color] =
               [.red, .orange, .yellow, .green, .blue, .purple]
        ZStack {
                    ForEach(0..<colors.count) {
                        Rectangle()
                            .fill(colors[$0])
                            .frame(width: 100, height: 100)
                            .offset(x: CGFloat($0) * 10.0,
                                    y: CGFloat($0) * 10.0)
                    }
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
