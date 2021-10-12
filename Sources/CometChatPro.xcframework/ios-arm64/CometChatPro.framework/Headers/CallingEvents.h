//
//  CallingEvents.h
//  RTCCometChat
//
//  Created by Nishant Tiwari on 15/04/20.
//  Copyright © 2020 Nishant Tiwari. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CallingEvents : NSObject

//-(void)callingEventOfonCallEndButtonPressed;
//
//-(void)RTCEventEndButtonPressed:(void (^) (void))onCallEndButtonPressed;

-(void)callingEventOfCallEndButtonPressed;
-(void)RTCEventOnButtonPressed:(void (^) (void))onCallEndButtonPressed;
//-(void)RTCEvents:(void (^) (NSDictionary *response))onCallEnded
//onCallEndButtonPressed:(void (^) (NSDictionary *response))onCallEndButtonPressed;

//-(void)RTCEvents:(void (^) (void))onCallEndButtonPressed;
////onCallEndButtonPressed:(void (^) (void))onCallEndButtonPressed;
//
//-(void)newRTCEvents:(NSString* (^) (NSString*))onCallEndButtonPressed;

-(void)callingEventOnEndCall;

-(void)RTCEventOnCallEnded:(void (^) (void))onCallEnded;

//-(void)callingEventOnUserJoinned;
-(void)callingEventOnUserJoinned:(NSDictionary *)UID;

- (void)RTCEventOnUserJoinned:(void (^)(NSDictionary *))onUserJoinned;

//-(void)RTCEventOnUserJoinned:(void (^) (void))onUserJoinned;

//-(void)RTCEventOnUserJoinned:(void (^)(NSString *))response;

//-(void)newRTCEvents:(NSString* (^) (NSString*))onCallEndButtonPressed;

-(void)callingEventOfonUserLeft:(NSDictionary *)UID;

-(void)RTCEventOnLeft:(void (^)(NSDictionary *))onUserLeft;

-(void)callingEventOnUserUserListChanged:(NSArray *)users;

-(void)RTCEventOnUserListChanged:(void (^)(NSArray *))onUserListChanged;

-(void)callingEventOnAudioDeviceListChanged:(NSArray *)devices;

-(void)RTCEventOnAudioDeviceListChanged:(void (^)(NSArray *))onAudioDeviceListChanged;

-(void)callingEventGetAudioModesOnSuccess:(NSArray *)devices;

-(void)RTCEventGetAudioModesOnSuccess:(void (^)(NSArray *))onAudioModeSuccess;


@end

NS_ASSUME_NONNULL_END
