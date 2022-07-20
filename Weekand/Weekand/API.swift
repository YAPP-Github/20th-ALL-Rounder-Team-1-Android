// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public enum ScheduleCategoryOpenType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case allOpen
  case followerOpen
  case closed
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ALL_OPEN": self = .allOpen
      case "FOLLOWER_OPEN": self = .followerOpen
      case "CLOSED": self = .closed
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .allOpen: return "ALL_OPEN"
      case .followerOpen: return "FOLLOWER_OPEN"
      case .closed: return "CLOSED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ScheduleCategoryOpenType, rhs: ScheduleCategoryOpenType) -> Bool {
    switch (lhs, rhs) {
      case (.allOpen, .allOpen): return true
      case (.followerOpen, .followerOpen): return true
      case (.closed, .closed): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ScheduleCategoryOpenType] {
    return [
      .allOpen,
      .followerOpen,
      .closed,
    ]
  }
}

public enum ScheduleCategorySort: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case dateCreatedAsc
  case dateCreatedDesc
  case nameAsc
  case nameDesc
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DATE_CREATED_ASC": self = .dateCreatedAsc
      case "DATE_CREATED_DESC": self = .dateCreatedDesc
      case "NAME_ASC": self = .nameAsc
      case "NAME_DESC": self = .nameDesc
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .dateCreatedAsc: return "DATE_CREATED_ASC"
      case .dateCreatedDesc: return "DATE_CREATED_DESC"
      case .nameAsc: return "NAME_ASC"
      case .nameDesc: return "NAME_DESC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ScheduleCategorySort, rhs: ScheduleCategorySort) -> Bool {
    switch (lhs, rhs) {
      case (.dateCreatedAsc, .dateCreatedAsc): return true
      case (.dateCreatedDesc, .dateCreatedDesc): return true
      case (.nameAsc, .nameAsc): return true
      case (.nameDesc, .nameDesc): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ScheduleCategorySort] {
    return [
      .dateCreatedAsc,
      .dateCreatedDesc,
      .nameAsc,
      .nameDesc,
    ]
  }
}

public enum ScheduleStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case completed
  case uncompleted
  case skip
  case undetermined
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "COMPLETED": self = .completed
      case "UNCOMPLETED": self = .uncompleted
      case "SKIP": self = .skip
      case "UNDETERMINED": self = .undetermined
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .completed: return "COMPLETED"
      case .uncompleted: return "UNCOMPLETED"
      case .skip: return "SKIP"
      case .undetermined: return "UNDETERMINED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ScheduleStatus, rhs: ScheduleStatus) -> Bool {
    switch (lhs, rhs) {
      case (.completed, .completed): return true
      case (.uncompleted, .uncompleted): return true
      case (.skip, .skip): return true
      case (.undetermined, .undetermined): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ScheduleStatus] {
    return [
      .completed,
      .uncompleted,
      .skip,
      .undetermined,
    ]
  }
}

public enum ScheduleStickerName: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case like
  case cool
  case good
  case cheerUp
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "LIKE": self = .like
      case "COOL": self = .cool
      case "GOOD": self = .good
      case "CHEER_UP": self = .cheerUp
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .like: return "LIKE"
      case .cool: return "COOL"
      case .good: return "GOOD"
      case .cheerUp: return "CHEER_UP"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ScheduleStickerName, rhs: ScheduleStickerName) -> Bool {
    switch (lhs, rhs) {
      case (.like, .like): return true
      case (.cool, .cool): return true
      case (.good, .good): return true
      case (.cheerUp, .cheerUp): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ScheduleStickerName] {
    return [
      .like,
      .cool,
      .good,
      .cheerUp,
    ]
  }
}

public enum SearchUserSort: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case dateCreatedDesc
  case followerCountDesc
  case nicknameAsc
  case nicknameDesc
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DATE_CREATED_DESC": self = .dateCreatedDesc
      case "FOLLOWER_COUNT_DESC": self = .followerCountDesc
      case "NICKNAME_ASC": self = .nicknameAsc
      case "NICKNAME_DESC": self = .nicknameDesc
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .dateCreatedDesc: return "DATE_CREATED_DESC"
      case .followerCountDesc: return "FOLLOWER_COUNT_DESC"
      case .nicknameAsc: return "NICKNAME_ASC"
      case .nicknameDesc: return "NICKNAME_DESC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: SearchUserSort, rhs: SearchUserSort) -> Bool {
    switch (lhs, rhs) {
      case (.dateCreatedDesc, .dateCreatedDesc): return true
      case (.followerCountDesc, .followerCountDesc): return true
      case (.nicknameAsc, .nicknameAsc): return true
      case (.nicknameDesc, .nicknameDesc): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [SearchUserSort] {
    return [
      .dateCreatedDesc,
      .followerCountDesc,
      .nicknameAsc,
      .nicknameDesc,
    ]
  }
}

public struct SignUpInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - email
  ///   - password
  ///   - nickname
  ///   - jobs
  ///   - interests
  ///   - signUpAgreed
  public init(email: String, password: String, nickname: String, jobs: Swift.Optional<[String]?> = nil, interests: Swift.Optional<[String]?> = nil, signUpAgreed: Bool) {
    graphQLMap = ["email": email, "password": password, "nickname": nickname, "jobs": jobs, "interests": interests, "signUpAgreed": signUpAgreed]
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: String {
    get {
      return graphQLMap["password"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var nickname: String {
    get {
      return graphQLMap["nickname"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nickname")
    }
  }

  public var jobs: Swift.Optional<[String]?> {
    get {
      return graphQLMap["jobs"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "jobs")
    }
  }

  public var interests: Swift.Optional<[String]?> {
    get {
      return graphQLMap["interests"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "interests")
    }
  }

  public var signUpAgreed: Bool {
    get {
      return graphQLMap["signUpAgreed"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "signUpAgreed")
    }
  }
}

public struct ScheduleCategoryInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - color
  ///   - openType
  public init(name: String, color: String, openType: ScheduleCategoryOpenType) {
    graphQLMap = ["name": name, "color": color, "openType": openType]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var color: String {
    get {
      return graphQLMap["color"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "color")
    }
  }

  public var openType: ScheduleCategoryOpenType {
    get {
      return graphQLMap["openType"] as! ScheduleCategoryOpenType
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "openType")
    }
  }
}

public final class CheckDuplicateNicknameQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query checkDuplicateNickname($nickname: String!) {
      checkDuplicateNickname(nickname: $nickname)
    }
    """

  public let operationName: String = "checkDuplicateNickname"

  public var nickname: String

  public init(nickname: String) {
    self.nickname = nickname
  }

  public var variables: GraphQLMap? {
    return ["nickname": nickname]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("checkDuplicateNickname", arguments: ["nickname": GraphQLVariable("nickname")], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(checkDuplicateNickname: Bool) {
      self.init(unsafeResultMap: ["__typename": "Query", "checkDuplicateNickname": checkDuplicateNickname])
    }

    /// 닉네임의 중복 여부를 체크한다
    public var checkDuplicateNickname: Bool {
      get {
        return resultMap["checkDuplicateNickname"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "checkDuplicateNickname")
      }
    }
  }
}

public final class CreateCategoryMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateCategory($name: String!, $color: String!, $openType: ScheduleCategoryOpenType!) {
      createCategory(
        scheduleCategoryInput: {name: $name, color: $color, openType: $openType}
      )
    }
    """

  public let operationName: String = "CreateCategory"

  public var name: String
  public var color: String
  public var openType: ScheduleCategoryOpenType

  public init(name: String, color: String, openType: ScheduleCategoryOpenType) {
    self.name = name
    self.color = color
    self.openType = openType
  }

  public var variables: GraphQLMap? {
    return ["name": name, "color": color, "openType": openType]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createCategory", arguments: ["scheduleCategoryInput": ["name": GraphQLVariable("name"), "color": GraphQLVariable("color"), "openType": GraphQLVariable("openType")]], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createCategory: Bool) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createCategory": createCategory])
    }

    /// 카테고리를 추가한다
    /// [error]
    /// 4007: 해당 카테고리명은 이미 사용중입니다.
    public var createCategory: Bool {
      get {
        return resultMap["createCategory"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "createCategory")
      }
    }
  }
}

public final class DeleteCategoryMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation deleteCategory($categoryId: ID!) {
      deleteCategory(input: {scheduleCategoryId: $categoryId})
    }
    """

  public let operationName: String = "deleteCategory"

  public var categoryId: GraphQLID

  public init(categoryId: GraphQLID) {
    self.categoryId = categoryId
  }

  public var variables: GraphQLMap? {
    return ["categoryId": categoryId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteCategory", arguments: ["input": ["scheduleCategoryId": GraphQLVariable("categoryId")]], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteCategory: Bool) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteCategory": deleteCategory])
    }

    /// 카테고리를 삭제한다
    /// [error]
    /// 4008: 최소 2개 이상의 카테고리가 존재할 시 삭제 가능합니다.
    /// 4002: 해당 카테고리를 찾을 수 없습니다.
    /// 3006: 권한이 없는 유저의 접근입니다.
    public var deleteCategory: Bool {
      get {
        return resultMap["deleteCategory"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteCategory")
      }
    }
  }
}

public final class FollowersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Followers($page: Int!, $size: Int!) {
      followers(page: $page, size: $size) {
        __typename
        paginationInfo {
          __typename
          hasNext
        }
        followers {
          __typename
          id
          nickname
          profileUrl
        }
      }
    }
    """

  public let operationName: String = "Followers"

  public var page: Int
  public var size: Int

  public init(page: Int, size: Int) {
    self.page = page
    self.size = size
  }

  public var variables: GraphQLMap? {
    return ["page": page, "size": size]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("followers", arguments: ["page": GraphQLVariable("page"), "size": GraphQLVariable("size")], type: .nonNull(.object(Follower.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(followers: Follower) {
      self.init(unsafeResultMap: ["__typename": "Query", "followers": followers.resultMap])
    }

    /// 팔로우 하고 있는 유저 목록을 가져온다
    public var followers: Follower {
      get {
        return Follower(unsafeResultMap: resultMap["followers"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "followers")
      }
    }

    public struct Follower: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["FollowerList"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("paginationInfo", type: .object(PaginationInfo.selections)),
          GraphQLField("followers", type: .nonNull(.list(.nonNull(.object(Follower.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(paginationInfo: PaginationInfo? = nil, followers: [Follower]) {
        self.init(unsafeResultMap: ["__typename": "FollowerList", "paginationInfo": paginationInfo.flatMap { (value: PaginationInfo) -> ResultMap in value.resultMap }, "followers": followers.map { (value: Follower) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var paginationInfo: PaginationInfo? {
        get {
          return (resultMap["paginationInfo"] as? ResultMap).flatMap { PaginationInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "paginationInfo")
        }
      }

      public var followers: [Follower] {
        get {
          return (resultMap["followers"] as! [ResultMap]).map { (value: ResultMap) -> Follower in Follower(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Follower) -> ResultMap in value.resultMap }, forKey: "followers")
        }
      }

      public struct PaginationInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PaginationInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("hasNext", type: .nonNull(.scalar(Bool.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(hasNext: Bool) {
          self.init(unsafeResultMap: ["__typename": "PaginationInfo", "hasNext": hasNext])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var hasNext: Bool {
          get {
            return resultMap["hasNext"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNext")
          }
        }
      }

      public struct Follower: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FollowUser"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("nickname", type: .scalar(String.self)),
            GraphQLField("profileUrl", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, nickname: String? = nil, profileUrl: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "FollowUser", "id": id, "nickname": nickname, "profileUrl": profileUrl])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var nickname: String? {
          get {
            return resultMap["nickname"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "nickname")
          }
        }

        public var profileUrl: String? {
          get {
            return resultMap["profileUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "profileUrl")
          }
        }
      }
    }
  }
}

public final class IssueTempPasswordMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation issueTempPassword($email: String!) {
      issueTempPassword(input: {email: $email})
    }
    """

  public let operationName: String = "issueTempPassword"

  public var email: String

  public init(email: String) {
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("issueTempPassword", arguments: ["input": ["email": GraphQLVariable("email")]], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(issueTempPassword: Bool) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "issueTempPassword": issueTempPassword])
    }

    /// 임시 비밀번호를 발급한다
    /// [error]
    /// 3001: 존재하지 않는 유저입니다.
    /// 6001: 이메일 내용 형식이 올바르지 않습니다.
    /// 3008: 이메일 전송에 실패하였습니다.
    public var issueTempPassword: Bool {
      get {
        return resultMap["issueTempPassword"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "issueTempPassword")
      }
    }
  }
}

public final class LoginQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Login($email: String!, $password: String!) {
      login(loginInput: {email: $email, password: $password}) {
        __typename
        refreshToken
        accessToken
      }
    }
    """

  public let operationName: String = "Login"

  public var email: String
  public var password: String

  public init(email: String, password: String) {
    self.email = email
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["email": email, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["loginInput": ["email": GraphQLVariable("email"), "password": GraphQLVariable("password")]], type: .nonNull(.object(Login.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login) {
      self.init(unsafeResultMap: ["__typename": "Query", "login": login.resultMap])
    }

    /// 로그인 한다
    /// [error]
    /// 3007: 이메일, 비밀번호가 일치하지 않습니다.
    public var login: Login {
      get {
        return Login(unsafeResultMap: resultMap["login"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["LoginResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("refreshToken", type: .nonNull(.scalar(String.self))),
          GraphQLField("accessToken", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(refreshToken: String, accessToken: String) {
        self.init(unsafeResultMap: ["__typename": "LoginResponse", "refreshToken": refreshToken, "accessToken": accessToken])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var refreshToken: String {
        get {
          return resultMap["refreshToken"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "refreshToken")
        }
      }

      public var accessToken: String {
        get {
          return resultMap["accessToken"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "accessToken")
        }
      }
    }
  }
}

public final class ScheduleCategoriesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ScheduleCategories($sort: ScheduleCategorySort!, $page: Int!, $size: Int!) {
      scheduleCategories(sort: $sort, page: $page, size: $size) {
        __typename
        paginationInfo {
          __typename
          hasNext
        }
        scheduleCategories {
          __typename
          id
          name
          color
          openType
        }
      }
    }
    """

  public let operationName: String = "ScheduleCategories"

  public var sort: ScheduleCategorySort
  public var page: Int
  public var size: Int

  public init(sort: ScheduleCategorySort, page: Int, size: Int) {
    self.sort = sort
    self.page = page
    self.size = size
  }

  public var variables: GraphQLMap? {
    return ["sort": sort, "page": page, "size": size]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("scheduleCategories", arguments: ["sort": GraphQLVariable("sort"), "page": GraphQLVariable("page"), "size": GraphQLVariable("size")], type: .nonNull(.object(ScheduleCategory.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(scheduleCategories: ScheduleCategory) {
      self.init(unsafeResultMap: ["__typename": "Query", "scheduleCategories": scheduleCategories.resultMap])
    }

    /// 일정 카테고리 목록을 가져온다
    public var scheduleCategories: ScheduleCategory {
      get {
        return ScheduleCategory(unsafeResultMap: resultMap["scheduleCategories"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "scheduleCategories")
      }
    }

    public struct ScheduleCategory: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScheduleCategoryList"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("paginationInfo", type: .nonNull(.object(PaginationInfo.selections))),
          GraphQLField("scheduleCategories", type: .nonNull(.list(.nonNull(.object(ScheduleCategory.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(paginationInfo: PaginationInfo, scheduleCategories: [ScheduleCategory]) {
        self.init(unsafeResultMap: ["__typename": "ScheduleCategoryList", "paginationInfo": paginationInfo.resultMap, "scheduleCategories": scheduleCategories.map { (value: ScheduleCategory) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var paginationInfo: PaginationInfo {
        get {
          return PaginationInfo(unsafeResultMap: resultMap["paginationInfo"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "paginationInfo")
        }
      }

      public var scheduleCategories: [ScheduleCategory] {
        get {
          return (resultMap["scheduleCategories"] as! [ResultMap]).map { (value: ResultMap) -> ScheduleCategory in ScheduleCategory(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: ScheduleCategory) -> ResultMap in value.resultMap }, forKey: "scheduleCategories")
        }
      }

      public struct PaginationInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PaginationInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("hasNext", type: .nonNull(.scalar(Bool.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(hasNext: Bool) {
          self.init(unsafeResultMap: ["__typename": "PaginationInfo", "hasNext": hasNext])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var hasNext: Bool {
          get {
            return resultMap["hasNext"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNext")
          }
        }
      }

      public struct ScheduleCategory: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScheduleCategory"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("color", type: .nonNull(.scalar(String.self))),
            GraphQLField("openType", type: .nonNull(.scalar(ScheduleCategoryOpenType.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String, color: String, openType: ScheduleCategoryOpenType) {
          self.init(unsafeResultMap: ["__typename": "ScheduleCategory", "id": id, "name": name, "color": color, "openType": openType])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var color: String {
          get {
            return resultMap["color"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "color")
          }
        }

        public var openType: ScheduleCategoryOpenType {
          get {
            return resultMap["openType"]! as! ScheduleCategoryOpenType
          }
          set {
            resultMap.updateValue(newValue, forKey: "openType")
          }
        }
      }
    }
  }
}

public final class ScheduleListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ScheduleList($date: Timestamp!) {
      schedules(date: $date) {
        __typename
        schedules {
          __typename
          id
          name
          status
          category {
            __typename
            color
          }
          dateTimeStart
          dateTimeEnd
          stickerCount
          stickerNames
        }
      }
    }
    """

  public let operationName: String = "ScheduleList"

  public var date: Timestamp

  public init(date: Timestamp) {
    self.date = date
  }

  public var variables: GraphQLMap? {
    return ["date": date]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("schedules", arguments: ["date": GraphQLVariable("date")], type: .nonNull(.object(Schedule.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(schedules: Schedule) {
      self.init(unsafeResultMap: ["__typename": "Query", "schedules": schedules.resultMap])
    }

    /// 메인 화면에 표시될 일정 목록을 반환한다
    public var schedules: Schedule {
      get {
        return Schedule(unsafeResultMap: resultMap["schedules"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "schedules")
      }
    }

    public struct Schedule: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScheduleList"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("schedules", type: .nonNull(.list(.nonNull(.object(Schedule.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(schedules: [Schedule]) {
        self.init(unsafeResultMap: ["__typename": "ScheduleList", "schedules": schedules.map { (value: Schedule) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var schedules: [Schedule] {
        get {
          return (resultMap["schedules"] as! [ResultMap]).map { (value: ResultMap) -> Schedule in Schedule(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Schedule) -> ResultMap in value.resultMap }, forKey: "schedules")
        }
      }

      public struct Schedule: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Schedule"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .nonNull(.scalar(ScheduleStatus.self))),
            GraphQLField("category", type: .nonNull(.object(Category.selections))),
            GraphQLField("dateTimeStart", type: .nonNull(.scalar(Timestamp.self))),
            GraphQLField("dateTimeEnd", type: .nonNull(.scalar(Timestamp.self))),
            GraphQLField("stickerCount", type: .nonNull(.scalar(Int.self))),
            GraphQLField("stickerNames", type: .nonNull(.list(.nonNull(.scalar(ScheduleStickerName.self))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String, status: ScheduleStatus, category: Category, dateTimeStart: Timestamp, dateTimeEnd: Timestamp, stickerCount: Int, stickerNames: [ScheduleStickerName]) {
          self.init(unsafeResultMap: ["__typename": "Schedule", "id": id, "name": name, "status": status, "category": category.resultMap, "dateTimeStart": dateTimeStart, "dateTimeEnd": dateTimeEnd, "stickerCount": stickerCount, "stickerNames": stickerNames])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var status: ScheduleStatus {
          get {
            return resultMap["status"]! as! ScheduleStatus
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        public var category: Category {
          get {
            return Category(unsafeResultMap: resultMap["category"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "category")
          }
        }

        public var dateTimeStart: Timestamp {
          get {
            return resultMap["dateTimeStart"]! as! Timestamp
          }
          set {
            resultMap.updateValue(newValue, forKey: "dateTimeStart")
          }
        }

        public var dateTimeEnd: Timestamp {
          get {
            return resultMap["dateTimeEnd"]! as! Timestamp
          }
          set {
            resultMap.updateValue(newValue, forKey: "dateTimeEnd")
          }
        }

        public var stickerCount: Int {
          get {
            return resultMap["stickerCount"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "stickerCount")
          }
        }

        public var stickerNames: [ScheduleStickerName] {
          get {
            return resultMap["stickerNames"]! as! [ScheduleStickerName]
          }
          set {
            resultMap.updateValue(newValue, forKey: "stickerNames")
          }
        }

        public struct Category: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ScheduleCategory"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("color", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(color: String) {
            self.init(unsafeResultMap: ["__typename": "ScheduleCategory", "color": color])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var color: String {
            get {
              return resultMap["color"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "color")
            }
          }
        }
      }
    }
  }
}

public final class SearchUsersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchUsers($searchQuery: String, $jobs: [String!], $interests: [String!], $sort: SearchUserSort, $page: Int!, $size: Int!) {
      searchUsers(
        searchQuery: $searchQuery
        jobs: $jobs
        interests: $interests
        sort: $sort
        page: $page
        size: $size
      ) {
        __typename
        paginationInfo {
          __typename
          hasNext
        }
        users {
          __typename
          id
          profileUrl
          nickname
          goal
        }
      }
    }
    """

  public let operationName: String = "SearchUsers"

  public var searchQuery: String?
  public var jobs: [String]?
  public var interests: [String]?
  public var sort: SearchUserSort?
  public var page: Int
  public var size: Int

  public init(searchQuery: String? = nil, jobs: [String]?, interests: [String]?, sort: SearchUserSort? = nil, page: Int, size: Int) {
    self.searchQuery = searchQuery
    self.jobs = jobs
    self.interests = interests
    self.sort = sort
    self.page = page
    self.size = size
  }

  public var variables: GraphQLMap? {
    return ["searchQuery": searchQuery, "jobs": jobs, "interests": interests, "sort": sort, "page": page, "size": size]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("searchUsers", arguments: ["searchQuery": GraphQLVariable("searchQuery"), "jobs": GraphQLVariable("jobs"), "interests": GraphQLVariable("interests"), "sort": GraphQLVariable("sort"), "page": GraphQLVariable("page"), "size": GraphQLVariable("size")], type: .nonNull(.object(SearchUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(searchUsers: SearchUser) {
      self.init(unsafeResultMap: ["__typename": "Query", "searchUsers": searchUsers.resultMap])
    }

    /// 회원을 검색한다
    public var searchUsers: SearchUser {
      get {
        return SearchUser(unsafeResultMap: resultMap["searchUsers"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "searchUsers")
      }
    }

    public struct SearchUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["SearchUserList"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("paginationInfo", type: .nonNull(.object(PaginationInfo.selections))),
          GraphQLField("users", type: .nonNull(.list(.nonNull(.object(User.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(paginationInfo: PaginationInfo, users: [User]) {
        self.init(unsafeResultMap: ["__typename": "SearchUserList", "paginationInfo": paginationInfo.resultMap, "users": users.map { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var paginationInfo: PaginationInfo {
        get {
          return PaginationInfo(unsafeResultMap: resultMap["paginationInfo"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "paginationInfo")
        }
      }

      public var users: [User] {
        get {
          return (resultMap["users"] as! [ResultMap]).map { (value: ResultMap) -> User in User(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: User) -> ResultMap in value.resultMap }, forKey: "users")
        }
      }

      public struct PaginationInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PaginationInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("hasNext", type: .nonNull(.scalar(Bool.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(hasNext: Bool) {
          self.init(unsafeResultMap: ["__typename": "PaginationInfo", "hasNext": hasNext])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var hasNext: Bool {
          get {
            return resultMap["hasNext"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNext")
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("profileUrl", type: .nonNull(.scalar(String.self))),
            GraphQLField("nickname", type: .nonNull(.scalar(String.self))),
            GraphQLField("goal", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, profileUrl: String, nickname: String, goal: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "profileUrl": profileUrl, "nickname": nickname, "goal": goal])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var profileUrl: String {
          get {
            return resultMap["profileUrl"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "profileUrl")
          }
        }

        public var nickname: String {
          get {
            return resultMap["nickname"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "nickname")
          }
        }

        public var goal: String? {
          get {
            return resultMap["goal"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "goal")
          }
        }
      }
    }
  }
}

public final class SendAuthKeyQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query sendAuthKey($email: String!) {
      sendAuthKey(email: $email)
    }
    """

  public let operationName: String = "sendAuthKey"

  public var email: String

  public init(email: String) {
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("sendAuthKey", arguments: ["email": GraphQLVariable("email")], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(sendAuthKey: Bool) {
      self.init(unsafeResultMap: ["__typename": "Query", "sendAuthKey": sendAuthKey])
    }

    /// 이메일 인증 키를 발급한다
    /// [error]
    /// 3009: 이미 등록된 이메일입니다.
    /// 6001: 이메일 내용 형식이 올바르지 않습니다.
    /// 3008: 이메일 전송에 실패하였습니다.
    public var sendAuthKey: Bool {
      get {
        return resultMap["sendAuthKey"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "sendAuthKey")
      }
    }
  }
}

public final class SignUpMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SignUp($signUpInput: SignUpInput!) {
      signUp(signUpInput: $signUpInput)
    }
    """

  public let operationName: String = "SignUp"

  public var signUpInput: SignUpInput

  public init(signUpInput: SignUpInput) {
    self.signUpInput = signUpInput
  }

  public var variables: GraphQLMap? {
    return ["signUpInput": signUpInput]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("signUp", arguments: ["signUpInput": GraphQLVariable("signUpInput")], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(signUp: Bool) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "signUp": signUp])
    }

    /// 회원가입을 한다
    /// [error]
    /// 3010: 회원가입에 실패하였습니다.
    /// 3012: 올바른 이메일 형식이 아닙니다.
    /// 3011: 올바른 비밀번호 형식이 아닙니다.
    /// 3013: 올바른 닉네임 형식이 아닙니다.
    /// 3009: 이미 등록된 이메일입니다.
    /// 3014: 이미 등록된 닉네임입니다.
    public var signUp: Bool {
      get {
        return resultMap["signUp"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "signUp")
      }
    }
  }
}

public final class UpdateCategoryMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateCategory($categoryId: ID!, $scheduleCategoryInput: ScheduleCategoryInput!) {
      updateCategory(
        categoryId: $categoryId
        scheduleCategoryInput: $scheduleCategoryInput
      ) {
        __typename
        name
      }
    }
    """

  public let operationName: String = "UpdateCategory"

  public var categoryId: GraphQLID
  public var scheduleCategoryInput: ScheduleCategoryInput

  public init(categoryId: GraphQLID, scheduleCategoryInput: ScheduleCategoryInput) {
    self.categoryId = categoryId
    self.scheduleCategoryInput = scheduleCategoryInput
  }

  public var variables: GraphQLMap? {
    return ["categoryId": categoryId, "scheduleCategoryInput": scheduleCategoryInput]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateCategory", arguments: ["categoryId": GraphQLVariable("categoryId"), "scheduleCategoryInput": GraphQLVariable("scheduleCategoryInput")], type: .nonNull(.object(UpdateCategory.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateCategory: UpdateCategory) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateCategory": updateCategory.resultMap])
    }

    /// 카테고리를 수정한다
    /// [error]
    /// 4007: 해당 카테고리명은 이미 사용중입니다.
    /// 4002: 해당 카테고리를 찾을 수 없습니다.
    /// 3006: 권한이 없는 유저의 접근입니다.
    public var updateCategory: UpdateCategory {
      get {
        return UpdateCategory(unsafeResultMap: resultMap["updateCategory"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateCategory")
      }
    }

    public struct UpdateCategory: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScheduleCategory"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String) {
        self.init(unsafeResultMap: ["__typename": "ScheduleCategory", "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class UserSummaryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query UserSummary {
      user {
        __typename
        id
        nickname
        profileUrl
        goal
      }
    }
    """

  public let operationName: String = "UserSummary"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("user", type: .object(User.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(user: User? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
    }

    /// 현재 로그인 된 회원 상세 정보를 가져온다
    /// [error]
    /// 3001: 존재하지 않는 유저입니다.
    public var user: User? {
      get {
        return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("nickname", type: .nonNull(.scalar(String.self))),
          GraphQLField("profileUrl", type: .nonNull(.scalar(String.self))),
          GraphQLField("goal", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, nickname: String, profileUrl: String, goal: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "nickname": nickname, "profileUrl": profileUrl, "goal": goal])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var nickname: String {
        get {
          return resultMap["nickname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var profileUrl: String {
        get {
          return resultMap["profileUrl"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profileUrl")
        }
      }

      public var goal: String? {
        get {
          return resultMap["goal"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "goal")
        }
      }
    }
  }
}

public final class VaildAuthKeyQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query vaildAuthKey($authKey: String!, $email: String!) {
      validAuthKey(validAuthKeyInput: {authKey: $authKey, email: $email})
    }
    """

  public let operationName: String = "vaildAuthKey"

  public var authKey: String
  public var email: String

  public init(authKey: String, email: String) {
    self.authKey = authKey
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["authKey": authKey, "email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("validAuthKey", arguments: ["validAuthKeyInput": ["authKey": GraphQLVariable("authKey"), "email": GraphQLVariable("email")]], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(validAuthKey: Bool) {
      self.init(unsafeResultMap: ["__typename": "Query", "validAuthKey": validAuthKey])
    }

    /// 이메일 인증 키를 검증한다
    public var validAuthKey: Bool {
      get {
        return resultMap["validAuthKey"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "validAuthKey")
      }
    }
  }
}
