//
//  SignalingSDP.swift
//  SimpleWebRTC
//
//  Created by n0 on 2019/01/08.
//  Copyright © 2019 n0. All rights reserved.
//

import Foundation

//struct SignalingSDP: Codable {
//    let type: String
//    let sdp: String
//}
//
//struct SignalingCandidate: Codable {
//    let type: String
//    let candidate: Candidate
//}

struct SignalingMessage: Codable {
    let type: String
    let sessionDescription: SDP?
    let candidate: Candidate?
}

struct SDP: Codable {
    let sdp: String
}

struct Candidate: Codable {
    let sdp: String
    let sdpMLineIndex: Int32
    let sdpMid: String
}

    /*
     
     ICE (Interactive Connectivity Establishment) 브라우저가 P2P 연결이 가능하게 해주는 프레임워크
     
     1. STUN 서버 (Session Tranersal Utilities for NAT)
     public address를 발견하거나 peer간의 직접 연결을 막는등 라우터의 제한 결정 프로토콜
     
     NAT (Network Address Translation)
     단말에 공개 IP 주소를 할당하기 위해 사용
     
     클라이언트는 STUN 서버에 요청을 보내서 나의 공개 주소를 확인하고 NAT 뒤의 클라이언트가 접근 가능한지 확인
     모든 단말은 라우터에 연결되어 있다.
     라우터는 public IP를 가지고 있고 각 단말은 private IP + 유일한 port 를 가진다.
     각각의 단말은 유일한 public IP가 없어도 인터넷 상에서 검색될 수 있다
     
     2. TURN 서버 (Traversal Using Relays around NAT)
     Symmetric NAT 이전에 연결한 적 있는 연결들만 허용하는 것
     이를 우회하기 위해 TURN 서버와 연결, 오버헤드 발생하므로 대안 없는 경우에만 사용
     
     SDP (Session Description Protocol)
     해상도, 형식, 코덱, 암호화 등 멀티미디어 컨텐츠 연결을 설명하기 위한 표준
     컨텐츠에 대한 메타 데이터 설명
     한 줄 이상의 UTF-8 텍스트
     
     */
