// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Tracing API (tracing/v1)
// Description:
//   Send and retrieve trace data from Google Stackdriver Trace.
// Documentation:
//   https://cloud.google.com/trace

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRTracing_Annotation;
@class GTLRTracing_Annotation_Attributes;
@class GTLRTracing_AttributeValue;
@class GTLRTracing_BatchUpdateSpansRequest_SpanUpdates;
@class GTLRTracing_Link;
@class GTLRTracing_Module;
@class GTLRTracing_NetworkEvent;
@class GTLRTracing_Span;
@class GTLRTracing_Span_Attributes;
@class GTLRTracing_SpanUpdates;
@class GTLRTracing_StackFrame;
@class GTLRTracing_StackTrace;
@class GTLRTracing_Status;
@class GTLRTracing_Status_Details_Item;
@class GTLRTracing_TimeEvent;
@class GTLRTracing_Trace;

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRTracing_Link.type

/**
 *  Current span is child of the linked span.
 *
 *  Value: "CHILD"
 */
GTLR_EXTERN NSString * const kGTLRTracing_Link_Type_Child;
/**
 *  Current span is parent of the linked span.
 *
 *  Value: "PARENT"
 */
GTLR_EXTERN NSString * const kGTLRTracing_Link_Type_Parent;
/**
 *  The relation of current span and linked span is unknown.
 *
 *  Value: "TYPE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRTracing_Link_Type_TypeUnspecified;

// ----------------------------------------------------------------------------
// GTLRTracing_NetworkEvent.type

/**
 *  Event type for receiving RPC message.
 *
 *  Value: "RECV"
 */
GTLR_EXTERN NSString * const kGTLRTracing_NetworkEvent_Type_Recv;
/**
 *  Event type for sending RPC message.
 *
 *  Value: "SENT"
 */
GTLR_EXTERN NSString * const kGTLRTracing_NetworkEvent_Type_Sent;
/**
 *  Unknown event.
 *
 *  Value: "TYPE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRTracing_NetworkEvent_Type_TypeUnspecified;

/**
 *  Text annotation with a set of attributes.
 */
@interface GTLRTracing_Annotation : GTLRObject

/** A set of attributes on the annotation. */
@property(nonatomic, strong, nullable) GTLRTracing_Annotation_Attributes *attributes;

/**
 *  A user-supplied message describing the event.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

@end


/**
 *  A set of attributes on the annotation.
 *
 *  @note This class is documented as having more properties of
 *        GTLRTracing_AttributeValue. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRTracing_Annotation_Attributes : GTLRObject
@end


/**
 *  Allowed attribute values.
 */
@interface GTLRTracing_AttributeValue : GTLRObject

/**
 *  A boolean value.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *boolValue;

/**
 *  An integer value.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *intValue;

/** A string value. */
@property(nonatomic, copy, nullable) NSString *stringValue;

@end


/**
 *  The request message for the `BatchUpdateSpans` method.
 */
@interface GTLRTracing_BatchUpdateSpansRequest : GTLRObject

/** A map from trace name to spans to be stored or updated. */
@property(nonatomic, strong, nullable) GTLRTracing_BatchUpdateSpansRequest_SpanUpdates *spanUpdates;

@end


/**
 *  A map from trace name to spans to be stored or updated.
 *
 *  @note This class is documented as having more properties of
 *        GTLRTracing_SpanUpdates. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRTracing_BatchUpdateSpansRequest_SpanUpdates : GTLRObject
@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance:
 *  service Foo {
 *  rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *  }
 *  The JSON representation for `Empty` is empty JSON object `{}`.
 */
@interface GTLRTracing_Empty : GTLRObject
@end


/**
 *  Link one span with another which may be in a different Trace. Used (for
 *  example) in batching operations, where a single batch handler processes
 *  multiple requests from different traces.
 */
@interface GTLRTracing_Link : GTLRObject

/**
 *  The span identifier of the linked span.
 *
 *  Uses NSNumber of unsignedLongLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *spanId;

/** The trace identifier of the linked span. */
@property(nonatomic, copy, nullable) NSString *traceId;

/**
 *  The type of the link.
 *
 *  Likely values:
 *    @arg @c kGTLRTracing_Link_Type_Child Current span is child of the linked
 *        span. (Value: "CHILD")
 *    @arg @c kGTLRTracing_Link_Type_Parent Current span is parent of the linked
 *        span. (Value: "PARENT")
 *    @arg @c kGTLRTracing_Link_Type_TypeUnspecified The relation of current
 *        span and linked span is unknown. (Value: "TYPE_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *type;

@end


/**
 *  The response message for the 'ListSpans' method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "spans" property. If returned as the result of a query, it should
 *        support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRTracing_ListSpansResponse : GTLRCollectionObject

/**
 *  If defined, indicates that there are more spans that match the request
 *  and that this value should be passed to the next request to continue
 *  retrieving additional spans.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The requested spans if they are any in the specified trace.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRTracing_Span *> *spans;

@end


/**
 *  The response message for the `ListTraces` method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "traces" property. If returned as the result of a query, it should
 *        support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRTracing_ListTracesResponse : GTLRCollectionObject

/**
 *  If defined, indicates that there are more traces that match the request
 *  and that this value should be passed to the next request to continue
 *  retrieving additional traces.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  List of trace records returned.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRTracing_Trace *> *traces;

@end


/**
 *  Binary module.
 */
@interface GTLRTracing_Module : GTLRObject

/**
 *  Build_id is a unique identifier for the module,
 *  usually a hash of its contents
 */
@property(nonatomic, copy, nullable) NSString *buildId;

/**
 *  E.g. main binary, kernel modules, and dynamic libraries
 *  such as libc.so, sharedlib.so
 */
@property(nonatomic, copy, nullable) NSString *module;

@end


/**
 *  An event describing an RPC message sent/received on the network.
 */
@interface GTLRTracing_NetworkEvent : GTLRObject

/**
 *  If available, this is the kernel time:
 *  For sent messages, this is the time at which the first bit was sent.
 *  For received messages, this is the time at which the last bit was
 *  received.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *kernelTime;

/**
 *  Every message has an identifier, which must be different from all the
 *  network messages in this span.
 *  This is especially important when the request/response are streamed.
 *
 *  Uses NSNumber of unsignedLongLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *messageId;

/**
 *  Number of bytes send/receive.
 *
 *  Uses NSNumber of unsignedLongLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *messageSize;

/**
 *  Type of a NetworkEvent.
 *
 *  Likely values:
 *    @arg @c kGTLRTracing_NetworkEvent_Type_Recv Event type for receiving RPC
 *        message. (Value: "RECV")
 *    @arg @c kGTLRTracing_NetworkEvent_Type_Sent Event type for sending RPC
 *        message. (Value: "SENT")
 *    @arg @c kGTLRTracing_NetworkEvent_Type_TypeUnspecified Unknown event.
 *        (Value: "TYPE_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *type;

@end


/**
 *  A span represents a single operation within a trace. Spans can be nested
 *  and form a trace tree. Often, a trace contains a root span that describes
 *  the
 *  end-to-end latency and, optionally, one or more subspans for
 *  its sub-operations. Spans do not need to be contiguous. There may be gaps
 *  between spans in a trace.
 */
@interface GTLRTracing_Span : GTLRObject

/**
 *  Properties of a span. Attributes at the span level.
 *  E.g.
 *  "/instance_id": "my-instance"
 *  "/zone": "us-central1-a"
 *  "/grpc/peer_address": "ip:port" (dns, etc.)
 *  "/grpc/deadline": "Duration"
 *  "/http/user_agent"
 *  "/http/request_bytes": 300
 *  "/http/response_bytes": 1200
 *  "/http/url": google.com/apis
 *  "/pid"
 *  "abc.com/myattribute": "my attribute value"
 *  Maximum length for attribute key is 128 characters, for string attribute
 *  value is 2K characters.
 */
@property(nonatomic, strong, nullable) GTLRTracing_Span_Attributes *attributes;

/**
 *  True if this Span has a remote parent (is an RPC server Span).
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *hasRemoteParent;

/**
 *  Identifier for the span. Must be a 64-bit integer other than 0 and
 *  unique within a trace.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 *
 *  Uses NSNumber of unsignedLongLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *identifier;

/** A collection of links. */
@property(nonatomic, strong, nullable) NSArray<GTLRTracing_Link *> *links;

/**
 *  Local machine clock time from the UNIX epoch,
 *  at which span execution ended.
 *  On the server side these are the times when the server application
 *  handler finishes running.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *localEndTime;

/**
 *  Local machine clock time from the UNIX epoch,
 *  at which span execution started.
 *  On the server side these are the times when the server application
 *  handler starts running.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *localStartTime;

/**
 *  Name of the span. The span name is sanitized and displayed in the
 *  Stackdriver Trace tool in the {% dynamic print site_values.console_name %}.
 *  The name may be a method name or some other per-call site name.
 *  For the same executable and the same call point, a best practice is
 *  to use a consistent name, which makes it easier to correlate
 *  cross-trace spans.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  ID of parent span. 0 or missing if this is a root span.
 *
 *  Uses NSNumber of unsignedLongLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *parentId;

/** Stack trace captured at the start of the span. This is optional. */
@property(nonatomic, strong, nullable) GTLRTracing_StackTrace *stackTrace;

/** The final status of the Span. This is optional. */
@property(nonatomic, strong, nullable) GTLRTracing_Status *status;

/** A collection of time-stamped events. */
@property(nonatomic, strong, nullable) NSArray<GTLRTracing_TimeEvent *> *timeEvents;

@end


/**
 *  Properties of a span. Attributes at the span level.
 *  E.g.
 *  "/instance_id": "my-instance"
 *  "/zone": "us-central1-a"
 *  "/grpc/peer_address": "ip:port" (dns, etc.)
 *  "/grpc/deadline": "Duration"
 *  "/http/user_agent"
 *  "/http/request_bytes": 300
 *  "/http/response_bytes": 1200
 *  "/http/url": google.com/apis
 *  "/pid"
 *  "abc.com/myattribute": "my attribute value"
 *  Maximum length for attribute key is 128 characters, for string attribute
 *  value is 2K characters.
 *
 *  @note This class is documented as having more properties of
 *        GTLRTracing_AttributeValue. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRTracing_Span_Attributes : GTLRObject
@end


/**
 *  Collection of spans to update.
 */
@interface GTLRTracing_SpanUpdates : GTLRObject

/** A collection of spans. */
@property(nonatomic, strong, nullable) NSArray<GTLRTracing_Span *> *spans;

@end


/**
 *  Presents a single stack frame in a stack trace.
 */
@interface GTLRTracing_StackFrame : GTLRObject

/**
 *  Column number is important in JavaScript(anonymous functions),
 *  Might not be available in some languages.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *columnNumber;

/** File name of the frame. */
@property(nonatomic, copy, nullable) NSString *fileName;

/** Fully qualified names which uniquely identify function/method/etc. */
@property(nonatomic, copy, nullable) NSString *functionName;

/**
 *  Line number of the frame.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *lineNumber;

/** Binary module the code is loaded from. */
@property(nonatomic, strong, nullable) GTLRTracing_Module *loadModule;

/**
 *  Used when function name is ‘mangled’. Not guaranteed to be fully
 *  qualified but usually it is.
 */
@property(nonatomic, copy, nullable) NSString *originalFunctionName;

/**
 *  source_version is deployment specific. It might be
 *  better to be stored in deployment metadata.
 */
@property(nonatomic, copy, nullable) NSString *sourceVersion;

@end


/**
 *  StackTrace collected in a trace.
 */
@interface GTLRTracing_StackTrace : GTLRObject

/** Stack frames of this stack trace. */
@property(nonatomic, strong, nullable) NSArray<GTLRTracing_StackFrame *> *stackFrame;

/**
 *  User can choose to use their own hash function to hash large attributes to
 *  save network bandwidth and storage.
 *  Typical usage is to pass both stack_frame and stack_trace_hash_id initially
 *  to inform the storage of the mapping. And in subsequent calls, pass in
 *  stack_trace_hash_id only. User shall verify the hash value is
 *  successfully stored.
 *
 *  Uses NSNumber of unsignedLongLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *stackTraceHashId;

@end


/**
 *  The `Status` type defines a logical error model that is suitable for
 *  different
 *  programming environments, including REST APIs and RPC APIs. It is used by
 *  [gRPC](https://github.com/grpc). The error model is designed to be:
 *  - Simple to use and understand for most users
 *  - Flexible enough to meet unexpected needs
 *  # Overview
 *  The `Status` message contains three pieces of data: error code, error
 *  message,
 *  and error details. The error code should be an enum value of
 *  google.rpc.Code, but it may accept additional error codes if needed. The
 *  error message should be a developer-facing English message that helps
 *  developers *understand* and *resolve* the error. If a localized user-facing
 *  error message is needed, put the localized message in the error details or
 *  localize it in the client. The optional error details may contain arbitrary
 *  information about the error. There is a predefined set of error detail types
 *  in the package `google.rpc` which can be used for common error conditions.
 *  # Language mapping
 *  The `Status` message is the logical representation of the error model, but
 *  it
 *  is not necessarily the actual wire format. When the `Status` message is
 *  exposed in different client libraries and different wire protocols, it can
 *  be
 *  mapped differently. For example, it will likely be mapped to some exceptions
 *  in Java, but more likely mapped to some error codes in C.
 *  # Other uses
 *  The error model and the `Status` message can be used in a variety of
 *  environments, either with or without APIs, to provide a
 *  consistent developer experience across different environments.
 *  Example uses of this error model include:
 *  - Partial errors. If a service needs to return partial errors to the client,
 *  it may embed the `Status` in the normal response to indicate the partial
 *  errors.
 *  - Workflow errors. A typical workflow has multiple steps. Each step may
 *  have a `Status` message for error reporting purpose.
 *  - Batch operations. If a client uses batch request and batch response, the
 *  `Status` message should be used directly inside batch response, one for
 *  each error sub-response.
 *  - Asynchronous operations. If an API call embeds asynchronous operation
 *  results in its response, the status of those operations should be
 *  represented directly using the `Status` message.
 *  - Logging. If some API errors are stored in logs, the message `Status` could
 *  be used directly after any stripping needed for security/privacy reasons.
 */
@interface GTLRTracing_Status : GTLRObject

/**
 *  The status code, which should be an enum value of google.rpc.Code.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *code;

/**
 *  A list of messages that carry the error details. There will be a
 *  common set of message types for APIs to use.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRTracing_Status_Details_Item *> *details;

/**
 *  A developer-facing error message, which should be in English. Any
 *  user-facing error message should be localized and sent in the
 *  google.rpc.Status.details field, or localized by the client.
 */
@property(nonatomic, copy, nullable) NSString *message;

@end


/**
 *  GTLRTracing_Status_Details_Item
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRTracing_Status_Details_Item : GTLRObject
@end


/**
 *  A time-stamped annotation in the Span.
 */
@interface GTLRTracing_TimeEvent : GTLRObject

/** Optional field for user supplied <string, AttributeValue> map */
@property(nonatomic, strong, nullable) GTLRTracing_Annotation *annotation;

/** The local machine absolute timestamp when this event happened. */
@property(nonatomic, strong, nullable) GTLRDateTime *localTime;

/** Optional field that can be used only for network events. */
@property(nonatomic, strong, nullable) GTLRTracing_NetworkEvent *networkEvent;

@end


/**
 *  A trace describes how long it takes for an application to perform some
 *  operations. It consists of a set of spans, each of which contains details
 *  about an operation with time information and operation details.
 */
@interface GTLRTracing_Trace : GTLRObject

/**
 *  ID of the trace which is "projects/<project_id>/traces/<trace_id>".
 *  trace_id is globally unique identifier for the trace. Common to all the
 *  spans. It is conceptually a 128-bit hex-encoded value.
 */
@property(nonatomic, copy, nullable) NSString *name;

@end

NS_ASSUME_NONNULL_END
