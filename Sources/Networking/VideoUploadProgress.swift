//
//  VideoUploadProgress.swift
//  swift-networking
//
//  Created by Yahav Ravid on 06/01/2026.
//

public struct VideoUploadProgress: Equatable {
    public let bytesUploaded: Int64
    public let totalBytes: Int64
    
    public var percentage: Double {
        guard totalBytes > 0 else { return 0 }
        return Double(bytesUploaded) / Double(totalBytes) * 100
    }
    
    public init(bytesUploaded: Int64, totalBytes: Int64) {
        self.bytesUploaded = bytesUploaded
        self.totalBytes = totalBytes
    }
}
