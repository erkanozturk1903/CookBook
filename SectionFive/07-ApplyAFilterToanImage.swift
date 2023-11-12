//
//  ApplyAFilterToanImage.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//Görüntüye Filte Uygulama

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ApplyAFilterToanImage: View {
    let image: Image

     init() {
       let uiImage = UIImage(named: "CoolCat") ?? UIImage()
       let filteredUIImage = ApplyAFilterToanImage.applySepiaFilter(to: uiImage)
       image = Image(uiImage: filteredUIImage)
     }

     var body: some View {
       image
         .resizable()
         .scaledToFit()
     }

     static func applySepiaFilter(to inputImage: UIImage) -> UIImage {
       guard let ciImage = CIImage(image: inputImage) else { return inputImage }

       let filter = CIFilter.sepiaTone()
       filter.inputImage = ciImage
       filter.intensity = 1.0

       // Get a CIContext
       let context = CIContext()

       // Create a CGImage from the CIImage
       guard let outputCIImage = filter.outputImage,
             let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else {
         return inputImage
       }

       // Create a UIImage from the CGImage
       let outputUIImage = UIImage(cgImage: cgImage)

       return outputUIImage
     }
}

struct ApplyAFilterToanImage_Previews: PreviewProvider {
    static var previews: some View {
        ApplyAFilterToanImage()
    }
}
