# 두잇(Dooit)
헬스장이나 집에서 운동을 하면 포인트가 적립되고,
적립한 포인트로 다양한 리워드와 교환할 수 있는 운동 동기부여 앱입니다.

## Project Structure
```
lib
├── common
├── data
│   ├── models
│   └── repositories
│       └── auth_repositroy.dart
├── main.dart
└── presentation
    ├── components
    │   ├── custom_card_icon.dart
    │   ├── custom_dotted_graph.dart
    │   ├── custom_swiper.dart
    │   └── custom_talk_card.dart
    ├── providers
    │   ├── challenge_provider.dart
    │   ├── community_provider.dart
    │   └── notification_provider.dart
    └── screens
        ├── challenge_screen.dart
        ├── community_screen.dart
        ├── home_screen.dart
        ├── main_screen.dart
        ├── map_screen.dart
        ├── my
        │   ├── my_list_1.dart
        │   ├── my_list_2.dart
        │   ├── my_list_3.dart
        │   ├── my_list_4.dart
        │   └── my_screen.dart
        ├── notification_screen.dart
        ├── sign_in_screen.dart
        └── splash_screen.dart
```

## Reference
* [카카오 디벨로퍼스](https://developers.kakao.com/docs)
* [밀리언즈](https://www.millionz.kr/)

## External API
* [Kakao Maps API](https://apis.map.kakao.com/)
* [Kakao OAuth API](https://developers.kakao.com/)

## Library & Framework
### Flutter & Dart
* Flutter: 3.32.5
* Dart: 3.8.1
### UI
* cupertino_icons: ^1.0.8 — iOS 스타일 아이콘
* flutter_svg: ^2.2.0 — SVG 이미지 렌더링
* dotted_border: ^3.1.0 — 점선 테두리

### Tools
* image_picker: ^1.1.2 — 이미지 선택
* shared_preferences: ^2.5.3 — 로컬 스토리지
* url_launcher: ^6.3.1 — 외부 URL 열기

### API
* http: ^1.4.0 — HTTP 클라이언트
* kakao_flutter_sdk_common: ^1.9.7+3 — 카카오 공통 SDK
* kakao_flutter_sdk_user: ^1.9.7+3 — 카카오 사용자 API
