//
//  ServiceManager.swift
//  6th_practice
//
//  Created by 진아현 on 8/31/25.
//

import Foundation
import Alamofire

final class ServiceManager {
    
    static let shared = ServiceManager()
    
    private let session: Session
    private let urlString: String = "\(Config.baseURL)/person"
    
    init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 10
        
        self.session = Session(configuration: configuration)
    }
    
    // MARK: - GET 요청
    func getUser(name: String) async {
        let parameters: [String: String] = [
            "name": name
        ]
        
        do {
            let user = try await session.request(urlString, method: .get, parameters: parameters, encoding: URLEncoding.default)
                .serializingDecodable(UserDTO.self)
                .value
            print("GET 성공:", user)
        } catch {
            print("GET 실패:", error.localizedDescription)
        }
    }
    
    // MARK: - POST 요청
    func postUser(user: UserDTO) async {
        do {
            let response = try await session.request(urlString, method: .post, parameters: user, encoder: JSONParameterEncoder.default)
                .serializingString()
                .value
            print("POST 성공:", response)
        } catch {
            print("POST 실패:", error.localizedDescription)
        }
    }
    
    // MARK: - PUT 요청
    func putUser(user: UserDTO) async {
        do {
            let response = try await session.request(urlString, method: .put, parameters: user, encoder: JSONParameterEncoder.default)
                .serializingString()
                .value
            print("PUT 성공:", response)
        } catch {
            print("PUT 실패:", error.localizedDescription)
        }
    }
    
    // MARK: - PATCH 요청
    func patchUser(name: String) async {
        let parameters: [String: String] = [
            "name": name
        ]
        
        do {
            let response = try await session.request(urlString, method: .patch, parameters: parameters, encoding: JSONEncoding.default)
                .serializingString()
                .value
            print("PATCH 성공:", response)
        } catch {
            print("PATCH 실패:", error.localizedDescription)
        }
    }
    
    // MARK: - DELETE 요청
    func deleteUser(name: String) async {
        let parameters: [String: String] = [
            "name": name
        ]
        
        do {
            let response = try await session.request(urlString, method: .delete, parameters: parameters, encoding: URLEncoding.default)
                .serializingString()
                .value
            print("DELETE 성공:", response)
        } catch {
            print("DELETE 실패:", error.localizedDescription)
        }
    }
}

import Security

class KeychainService {
    
    /// <#Description#>
    /// - Parameters:
    ///   - account: <#account description#>
    ///   - service: <#service description#>
    ///   - password: <#password description#>
    /// - Returns: <#description#>
    @discardableResult
    func savePasswordToKeychain(account: String, service: String, password: String) -> OSStatus {
        // 1. 저장할 데이터를 Data 타입으로 변환
        guard let passwordData = password.data(using: .utf8) else {
            return errSecParam // 잘못된 데이터
        }

        // 2. Keychain Item 딕셔너리 구성
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,  // 저장 유형: 일반 비밀번호
            kSecAttrAccount as String: account,             // 계정 식별자
            kSecAttrService as String: service,             // 서비스 이름
            kSecValueData as String: passwordData,          // 실제 저장할 데이터
            kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlocked // 접근 가능 조건
        ]

        // 3. 이미 같은 항목이 있다면 삭제 (중복 방지)
        SecItemDelete(query as CFDictionary)

        // 4. 새 항목 추가
        let status = SecItemAdd(query as CFDictionary, nil)
        return status
    }
}
