//
//  AppContent.swift
//  Enum-Sample
//
//  Created by kawaharadai on 2018/08/10.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import Foundation

/// 血液型（血液型と性格を返す）
enum BloodType: Int {
    case ab
    case a
    case b
    case o
    
    var type: String {
        switch self {
        case .ab:
            return "AB型"
        case .a:
            return "A型"
        case .b:
            return "B型"
        case .o:
            return "O型"
        }
    }
    
    var personality: String {
        switch self {
        case .ab:
            return "天才"
        case .a:
            return "几帳面"
        case .b:
            return "短期"
        case .o:
            return "大雑把"
        }
    }
}

/// File名またはフォルダ名を返す
enum FileType {
    case folder(id: Int)
    case data(id: Int, folderName: String)
    
    // ファイル名を取得
    static func getFileName(type: FileType) -> String {
        switch type {
        case .folder(let id):
            return "folder：\(id)"
        case .data(let id, let folderName):
            return "\(folderName) - file：\(id)"
        }
    }
}
