//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSConstants.h"

NSString *const MSGraphBaseURL = @"https://graph.microsoft.com/v1.0";
NSString *const MSHeaderSdkVersion = @"SdkVersion";
NSString *const MSGraphSdkVersionHeaderPrefix = @"graph-ios-";

NSString *const MSErrorDomain = @"com.microsoft.graph.errors";

NSString *const MSErrorTooManyRedirectsFormatString = @"More than %ld redirects encountered while sending the request.";

NSString *const MSErrorLocationHeaderNotFoundString = @"There is no location header in the redirect response.";
NSString *const MSErrorOperationUnsuccessfulString = @"Operation was unsuccessful.";

NSString *const MSErrorTooManyRetries = @"Too many retries";

NSString *const MSErrorTooManyRetriesFormatString = @"More than %ld retries encountered while sending the request.";


 NSString *const HTTPMethodGet = @"GET";
 NSString *const HTTPMethodPut = @"PUT";
 NSString *const HTTPMethodPatch = @"PATCH";
 NSString *const HTTPMethodPost = @"POST";
 NSString *const HTTPMethodDelete = @"DELETE";
