//
//  UploadDelegate.swift
//  swift-networking
//
//  Created by Yahav Ravid on 06/01/2026.
//

import Foundation

final class UploadDelegate: NSObject, URLSessionTaskDelegate {
    let progressHandler: @Sendable (VideoUploadProgress) -> Void
    
    init(progressHandler: @Sendable @escaping (VideoUploadProgress) -> Void) {
        self.progressHandler = progressHandler
    }
    
    func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64
    ) {
        let progress = VideoUploadProgress(
            bytesUploaded: totalBytesSent,
            totalBytes: totalBytesExpectedToSend
        )
        progressHandler(progress)
    }
}
