
//
//  String+Functions.swift
//  PointOfSale
//
//  Created by Michael Schloss on 6/1/15.
//  Copyright (c) 2015 Michael Schloss. All rights reserved.
//

//Trims a string only along a certain side.  Useful for IDs and calculator displays

import UIKit

///The side to trim along
@objc enum StringSide : Int
{
    ///The Left (front) side of the string
    case Left
    
    ///The Right (back) side of the string
    case Right
}

extension String
{
    /**
    Trims the string along a certain side
    
    :param: side The side of the string to trim along
    
    :returns: A string trimmed along the side specified

    */
    func stringByStrippingPaddingOffSide(side: StringSide) -> String
    {
        if count(self) == 0
        {
            return self
        }
        
        var newString = self
        switch side
        {
        case .Left:     //Takes all 0's off of left side
            while count(newString) > 0 && newString.substringToIndex(advance(startIndex, 1)) == "0"
            {
                newString = newString.substringFromIndex(advance(startIndex, 1))
                println(newString)
            }
            break
            
        case .Right:    //Takes all 0's off right side.
            //This case has an interesting side effect.  If self is initially "" or nil, adding initial 0's will produce a "" string.
            //This is comparable to -stringByTrimmingCharactersInSet, in which this case will auto-trim the left side if inital value is 0[0...]"
            //This effect is only seen when adding to the string from "" or nil, this is not the case when the full string is already set
            while count(newString) > 0 && newString.substringFromIndex(advance(endIndex, -1)) == "0"
            {
                newString = newString.substringToIndex(advance(endIndex, -1))
            }
            break
            
        default:
            break
        }
        
        return newString
    }
}
