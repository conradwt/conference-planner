//  This file was automatically generated and should not be edited.

import Apollo

public final class ConferenceDetailsQuery: GraphQLQuery {
  public static let operationString =
    "query ConferenceDetails($id: ID!) {\n  conference: Conference(id: $id) {\n    __typename\n    ...ConferenceDetails\n  }\n}"

  public static var requestString: String { return operationString.appending(ConferenceDetails.fragmentString) }

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("Conference", alias: "conference", arguments: ["id": GraphQLVariable("id")], type: .object(Conference.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conference: Conference? = nil) {
      self.init(snapshot: ["__typename": "Query", "conference": conference.flatMap { $0.snapshot }])
    }

    public var conference: Conference? {
      get {
        return (snapshot["conference"] as? Snapshot).flatMap { Conference(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "conference")
      }
    }

    public struct Conference: GraphQLSelectionSet {
      public static let possibleTypes = ["Conference"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("city", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .nonNull(.scalar(String.self))),
        GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, city: String, year: String, attendees: [Attendee]? = nil) {
        self.init(snapshot: ["__typename": "Conference", "id": id, "name": name, "city": city, "year": year, "attendees": attendees.flatMap { $0.map { $0.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var city: String {
        get {
          return snapshot["city"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "city")
        }
      }

      public var year: String {
        get {
          return snapshot["year"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "year")
        }
      }

      public var attendees: [Attendee]? {
        get {
          return (snapshot["attendees"] as? [Snapshot]).flatMap { $0.map { Attendee(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "attendees")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var conferenceDetails: ConferenceDetails {
          get {
            return ConferenceDetails(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Attendee: GraphQLSelectionSet {
        public static let possibleTypes = ["Attendee"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID) {
          self.init(snapshot: ["__typename": "Attendee", "id": id])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class AttendeesForConferenceQuery: GraphQLQuery {
  public static let operationString =
    "query AttendeesForConference($conferenceId: ID!) {\n  conference: Conference(id: $conferenceId) {\n    __typename\n    id\n    attendees {\n      __typename\n      ...AttendeeDetails\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(AttendeeDetails.fragmentString) }

  public var conferenceId: GraphQLID

  public init(conferenceId: GraphQLID) {
    self.conferenceId = conferenceId
  }

  public var variables: GraphQLMap? {
    return ["conferenceId": conferenceId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("Conference", alias: "conference", arguments: ["id": GraphQLVariable("conferenceId")], type: .object(Conference.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conference: Conference? = nil) {
      self.init(snapshot: ["__typename": "Query", "conference": conference.flatMap { $0.snapshot }])
    }

    public var conference: Conference? {
      get {
        return (snapshot["conference"] as? Snapshot).flatMap { Conference(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "conference")
      }
    }

    public struct Conference: GraphQLSelectionSet {
      public static let possibleTypes = ["Conference"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, attendees: [Attendee]? = nil) {
        self.init(snapshot: ["__typename": "Conference", "id": id, "attendees": attendees.flatMap { $0.map { $0.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var attendees: [Attendee]? {
        get {
          return (snapshot["attendees"] as? [Snapshot]).flatMap { $0.map { Attendee(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "attendees")
        }
      }

      public struct Attendee: GraphQLSelectionSet {
        public static let possibleTypes = ["Attendee"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("_conferencesMeta", type: .nonNull(.object(ConferencesMetum.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, conferencesMeta: ConferencesMetum) {
          self.init(snapshot: ["__typename": "Attendee", "id": id, "name": name, "_conferencesMeta": conferencesMeta.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        /// Meta information about the query.
        public var conferencesMeta: ConferencesMetum {
          get {
            return ConferencesMetum(snapshot: snapshot["_conferencesMeta"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "_conferencesMeta")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var attendeeDetails: AttendeeDetails {
            get {
              return AttendeeDetails(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        public struct ConferencesMetum: GraphQLSelectionSet {
          public static let possibleTypes = ["_QueryMeta"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("count", type: .nonNull(.scalar(Int.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(count: Int) {
            self.init(snapshot: ["__typename": "_QueryMeta", "count": count])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var count: Int {
            get {
              return snapshot["count"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "count")
            }
          }
        }
      }
    }
  }
}

public final class AttendConferenceMutation: GraphQLMutation {
  public static let operationString =
    "mutation AttendConference($conferenceId: ID!, $attendeeId: ID!) {\n  addToAttendees(conferencesConferenceId: $conferenceId, attendeesAttendeeId: $attendeeId) {\n    __typename\n    conferencesConference {\n      __typename\n      id\n      attendees {\n        __typename\n        ...AttendeeDetails\n      }\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(AttendeeDetails.fragmentString) }

  public var conferenceId: GraphQLID
  public var attendeeId: GraphQLID

  public init(conferenceId: GraphQLID, attendeeId: GraphQLID) {
    self.conferenceId = conferenceId
    self.attendeeId = attendeeId
  }

  public var variables: GraphQLMap? {
    return ["conferenceId": conferenceId, "attendeeId": attendeeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addToAttendees", arguments: ["conferencesConferenceId": GraphQLVariable("conferenceId"), "attendeesAttendeeId": GraphQLVariable("attendeeId")], type: .object(AddToAttendee.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addToAttendees: AddToAttendee? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "addToAttendees": addToAttendees.flatMap { $0.snapshot }])
    }

    public var addToAttendees: AddToAttendee? {
      get {
        return (snapshot["addToAttendees"] as? Snapshot).flatMap { AddToAttendee(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "addToAttendees")
      }
    }

    public struct AddToAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["AddToAttendeesPayload"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conferencesConference", type: .object(ConferencesConference.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conferencesConference: ConferencesConference? = nil) {
        self.init(snapshot: ["__typename": "AddToAttendeesPayload", "conferencesConference": conferencesConference.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conferencesConference: ConferencesConference? {
        get {
          return (snapshot["conferencesConference"] as? Snapshot).flatMap { ConferencesConference(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conferencesConference")
        }
      }

      public struct ConferencesConference: GraphQLSelectionSet {
        public static let possibleTypes = ["Conference"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, attendees: [Attendee]? = nil) {
          self.init(snapshot: ["__typename": "Conference", "id": id, "attendees": attendees.flatMap { $0.map { $0.snapshot } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var attendees: [Attendee]? {
          get {
            return (snapshot["attendees"] as? [Snapshot]).flatMap { $0.map { Attendee(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "attendees")
          }
        }

        public struct Attendee: GraphQLSelectionSet {
          public static let possibleTypes = ["Attendee"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("_conferencesMeta", type: .nonNull(.object(ConferencesMetum.selections))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, conferencesMeta: ConferencesMetum) {
            self.init(snapshot: ["__typename": "Attendee", "id": id, "name": name, "_conferencesMeta": conferencesMeta.snapshot])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          /// Meta information about the query.
          public var conferencesMeta: ConferencesMetum {
            get {
              return ConferencesMetum(snapshot: snapshot["_conferencesMeta"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "_conferencesMeta")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          public struct Fragments {
            public var snapshot: Snapshot

            public var attendeeDetails: AttendeeDetails {
              get {
                return AttendeeDetails(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }

          public struct ConferencesMetum: GraphQLSelectionSet {
            public static let possibleTypes = ["_QueryMeta"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("count", type: .nonNull(.scalar(Int.self))),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(count: Int) {
              self.init(snapshot: ["__typename": "_QueryMeta", "count": count])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var count: Int {
              get {
                return snapshot["count"]! as! Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "count")
              }
            }
          }
        }
      }
    }
  }
}

public final class NotAttendConferenceMutation: GraphQLMutation {
  public static let operationString =
    "mutation NotAttendConference($conferenceId: ID!, $attendeeId: ID!) {\n  removeFromAttendees(conferencesConferenceId: $conferenceId, attendeesAttendeeId: $attendeeId) {\n    __typename\n    conferencesConference {\n      __typename\n      id\n      attendees {\n        __typename\n        ...AttendeeDetails\n      }\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(AttendeeDetails.fragmentString) }

  public var conferenceId: GraphQLID
  public var attendeeId: GraphQLID

  public init(conferenceId: GraphQLID, attendeeId: GraphQLID) {
    self.conferenceId = conferenceId
    self.attendeeId = attendeeId
  }

  public var variables: GraphQLMap? {
    return ["conferenceId": conferenceId, "attendeeId": attendeeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("removeFromAttendees", arguments: ["conferencesConferenceId": GraphQLVariable("conferenceId"), "attendeesAttendeeId": GraphQLVariable("attendeeId")], type: .object(RemoveFromAttendee.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(removeFromAttendees: RemoveFromAttendee? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeFromAttendees": removeFromAttendees.flatMap { $0.snapshot }])
    }

    public var removeFromAttendees: RemoveFromAttendee? {
      get {
        return (snapshot["removeFromAttendees"] as? Snapshot).flatMap { RemoveFromAttendee(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeFromAttendees")
      }
    }

    public struct RemoveFromAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["RemoveFromAttendeesPayload"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conferencesConference", type: .object(ConferencesConference.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conferencesConference: ConferencesConference? = nil) {
        self.init(snapshot: ["__typename": "RemoveFromAttendeesPayload", "conferencesConference": conferencesConference.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conferencesConference: ConferencesConference? {
        get {
          return (snapshot["conferencesConference"] as? Snapshot).flatMap { ConferencesConference(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conferencesConference")
        }
      }

      public struct ConferencesConference: GraphQLSelectionSet {
        public static let possibleTypes = ["Conference"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, attendees: [Attendee]? = nil) {
          self.init(snapshot: ["__typename": "Conference", "id": id, "attendees": attendees.flatMap { $0.map { $0.snapshot } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var attendees: [Attendee]? {
          get {
            return (snapshot["attendees"] as? [Snapshot]).flatMap { $0.map { Attendee(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "attendees")
          }
        }

        public struct Attendee: GraphQLSelectionSet {
          public static let possibleTypes = ["Attendee"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("_conferencesMeta", type: .nonNull(.object(ConferencesMetum.selections))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, conferencesMeta: ConferencesMetum) {
            self.init(snapshot: ["__typename": "Attendee", "id": id, "name": name, "_conferencesMeta": conferencesMeta.snapshot])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          /// Meta information about the query.
          public var conferencesMeta: ConferencesMetum {
            get {
              return ConferencesMetum(snapshot: snapshot["_conferencesMeta"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "_conferencesMeta")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          public struct Fragments {
            public var snapshot: Snapshot

            public var attendeeDetails: AttendeeDetails {
              get {
                return AttendeeDetails(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }

          public struct ConferencesMetum: GraphQLSelectionSet {
            public static let possibleTypes = ["_QueryMeta"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("count", type: .nonNull(.scalar(Int.self))),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(count: Int) {
              self.init(snapshot: ["__typename": "_QueryMeta", "count": count])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var count: Int {
              get {
                return snapshot["count"]! as! Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "count")
              }
            }
          }
        }
      }
    }
  }
}

public final class AllConferencesQuery: GraphQLQuery {
  public static let operationString =
    "query AllConferences {\n  allConferences {\n    __typename\n    ...ConferenceDetails\n  }\n}"

  public static var requestString: String { return operationString.appending(ConferenceDetails.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allConferences", type: .nonNull(.list(.nonNull(.object(AllConference.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(allConferences: [AllConference]) {
      self.init(snapshot: ["__typename": "Query", "allConferences": allConferences.map { $0.snapshot }])
    }

    public var allConferences: [AllConference] {
      get {
        return (snapshot["allConferences"] as! [Snapshot]).map { AllConference(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "allConferences")
      }
    }

    public struct AllConference: GraphQLSelectionSet {
      public static let possibleTypes = ["Conference"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("city", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .nonNull(.scalar(String.self))),
        GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, city: String, year: String, attendees: [Attendee]? = nil) {
        self.init(snapshot: ["__typename": "Conference", "id": id, "name": name, "city": city, "year": year, "attendees": attendees.flatMap { $0.map { $0.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var city: String {
        get {
          return snapshot["city"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "city")
        }
      }

      public var year: String {
        get {
          return snapshot["year"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "year")
        }
      }

      public var attendees: [Attendee]? {
        get {
          return (snapshot["attendees"] as? [Snapshot]).flatMap { $0.map { Attendee(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "attendees")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var conferenceDetails: ConferenceDetails {
          get {
            return ConferenceDetails(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Attendee: GraphQLSelectionSet {
        public static let possibleTypes = ["Attendee"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID) {
          self.init(snapshot: ["__typename": "Attendee", "id": id])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class CreateAttendeeMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAttendee($name: String!) {\n  createAttendee(name: $name) {\n    __typename\n    id\n    name\n  }\n}"

  public var name: String

  public init(name: String) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAttendee", arguments: ["name": GraphQLVariable("name")], type: .object(CreateAttendee.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAttendee: CreateAttendee? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAttendee": createAttendee.flatMap { $0.snapshot }])
    }

    public var createAttendee: CreateAttendee? {
      get {
        return (snapshot["createAttendee"] as? Snapshot).flatMap { CreateAttendee(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAttendee")
      }
    }

    public struct CreateAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["Attendee"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String) {
        self.init(snapshot: ["__typename": "Attendee", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class UpdateAttendeeNameMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAttendeeName($id: ID!, $newName: String!) {\n  updateAttendee(id: $id, name: $newName) {\n    __typename\n    id\n    name\n  }\n}"

  public var id: GraphQLID
  public var newName: String

  public init(id: GraphQLID, newName: String) {
    self.id = id
    self.newName = newName
  }

  public var variables: GraphQLMap? {
    return ["id": id, "newName": newName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAttendee", arguments: ["id": GraphQLVariable("id"), "name": GraphQLVariable("newName")], type: .object(UpdateAttendee.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAttendee: UpdateAttendee? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAttendee": updateAttendee.flatMap { $0.snapshot }])
    }

    public var updateAttendee: UpdateAttendee? {
      get {
        return (snapshot["updateAttendee"] as? Snapshot).flatMap { UpdateAttendee(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAttendee")
      }
    }

    public struct UpdateAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["Attendee"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String) {
        self.init(snapshot: ["__typename": "Attendee", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public struct AttendeeDetails: GraphQLFragment {
  public static let fragmentString =
    "fragment AttendeeDetails on Attendee {\n  __typename\n  id\n  name\n  _conferencesMeta {\n    __typename\n    count\n  }\n}"

  public static let possibleTypes = ["Attendee"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("_conferencesMeta", type: .nonNull(.object(ConferencesMetum.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: GraphQLID, name: String, conferencesMeta: ConferencesMetum) {
    self.init(snapshot: ["__typename": "Attendee", "id": id, "name": name, "_conferencesMeta": conferencesMeta.snapshot])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  /// Meta information about the query.
  public var conferencesMeta: ConferencesMetum {
    get {
      return ConferencesMetum(snapshot: snapshot["_conferencesMeta"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "_conferencesMeta")
    }
  }

  public struct ConferencesMetum: GraphQLSelectionSet {
    public static let possibleTypes = ["_QueryMeta"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("count", type: .nonNull(.scalar(Int.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(count: Int) {
      self.init(snapshot: ["__typename": "_QueryMeta", "count": count])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var count: Int {
      get {
        return snapshot["count"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "count")
      }
    }
  }
}

public struct ConferenceDetails: GraphQLFragment {
  public static let fragmentString =
    "fragment ConferenceDetails on Conference {\n  __typename\n  id\n  name\n  city\n  year\n  attendees {\n    __typename\n    id\n  }\n}"

  public static let possibleTypes = ["Conference"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("city", type: .nonNull(.scalar(String.self))),
    GraphQLField("year", type: .nonNull(.scalar(String.self))),
    GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: GraphQLID, name: String, city: String, year: String, attendees: [Attendee]? = nil) {
    self.init(snapshot: ["__typename": "Conference", "id": id, "name": name, "city": city, "year": year, "attendees": attendees.flatMap { $0.map { $0.snapshot } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  public var city: String {
    get {
      return snapshot["city"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "city")
    }
  }

  public var year: String {
    get {
      return snapshot["year"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "year")
    }
  }

  public var attendees: [Attendee]? {
    get {
      return (snapshot["attendees"] as? [Snapshot]).flatMap { $0.map { Attendee(snapshot: $0) } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "attendees")
    }
  }

  public struct Attendee: GraphQLSelectionSet {
    public static let possibleTypes = ["Attendee"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: GraphQLID) {
      self.init(snapshot: ["__typename": "Attendee", "id": id])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: GraphQLID {
      get {
        return snapshot["id"]! as! GraphQLID
      }
      set {
        snapshot.updateValue(newValue, forKey: "id")
      }
    }
  }
}