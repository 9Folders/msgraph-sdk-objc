//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSRetryHandlerOptions.h"
#import "MSConstants.h"

#define UPPER_LIMIT_FOR_DELAY 180
#define UPPER_LIMIT_FOR_RETRIES 10

@implementation MSRetryHandlerOptions

@synthesize middlewareOptionsType;

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        _delay = 3;
        _maxRetries = 3;
        middlewareOptionsType = MSMiddlewareOptionsTypeRetry;
    }
    return self;
}

- (instancetype)initWithDelay:(NSInteger)delay maxRetries:(NSInteger)maxRetries andError:(NSError *__autoreleasing *)error
{
    self = [self init];
    if(self)
    {
        if(delay>UPPER_LIMIT_FOR_DELAY)
        {
            NSDictionary *userInfo = @{
                                       NSLocalizedDescriptionKey: MSErrorOperationUnsuccessfulString,

                                       NSLocalizedFailureReasonErrorKey:[NSString stringWithFormat:MSErrorDelayLimitExceededString,UPPER_LIMIT_FOR_DELAY]
                                       };
             *error = [NSError errorWithDomain:MSErrorDomain code:MSCLientErrorCodeSDKUpperLimitReached userInfo:userInfo];
            return nil;
        }
        if(maxRetries>UPPER_LIMIT_FOR_RETRIES)
        {
            NSDictionary *userInfo = @{
                                       NSLocalizedDescriptionKey: MSErrorOperationUnsuccessfulString,
                                       NSLocalizedFailureReasonErrorKey:[NSString stringWithFormat:MSErrorMaxRetriesLimitExceededString,UPPER_LIMIT_FOR_RETRIES]
                                       };
            *error = [NSError errorWithDomain:MSErrorDomain code:MSCLientErrorCodeSDKUpperLimitReached userInfo:userInfo];
            return nil;
        }
        _delay = delay;
        _maxRetries = maxRetries;
    }
    return self;
}


@end
