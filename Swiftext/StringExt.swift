//
//  StringExt.swift
//  Swiftext
//
//  Created by Sua Le on 6/17/17.
//  Copyright © 2017 Sua Le. All rights reserved.
//

import Foundation


extension String {
    public subscript(offset: Int) -> Character?{
        guard offset < self.characters.count else {
            return nil
        }
        let index = self.index(startIndex, offsetBy: offset)
        return self[index]
    }
    
    public func index(offsetBy index: Int) -> Index? {
        guard index <= self.characters.count && index >= 0 else {return nil}
        return self.index(startIndex, offsetBy: index)
    }
    
    public func substring(from: Int, length: Int) -> String? {
        guard let start = self.index(offsetBy: from) else {return nil}
        var extra = 0
        if length < 0 {
            extra = 1
        }
        guard let end = self.index(offsetBy: from + length + extra) else {return nil}
        
        return length >= 0 ? self[start..<end] : self[end...start]
    }
    
    public func flat() -> String
    {
        let tone = "ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ"
    
    
        let flat = "aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYY"
        var ret = self
        
        for j in 0..<tone.characters.count{
            ret = ret.replacingOccurrences(of: "\(tone[j]!)", with: "\(flat[j]!)")                        
        }
        
        return ret
    }
}


