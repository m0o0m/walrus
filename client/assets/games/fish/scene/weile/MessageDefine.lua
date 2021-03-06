﻿local a = [[
MSGC2SClientReady = 1 {
}
MSGS2CGameStatus = 2 {
	frameId : int = 1 ;帧号
	isInGroup : bool = 2
	timelineIndex: int = 3
	bullets : []MSGBulletInfo = 4
	killedFishes : []MSGFishInfo =5
	isInFreeze : bool = 6
	freezePlayerId : int = 7
	playerInfos: []MSGPlayerInfo = 8
	fishGroupComing : bool = 9
	leftFishGroupSeconds : int = 10
	killRewardFishInDay : int = 11
	rewardRate : int = 12
	drawRequireRewardFishCount : int = 13
	calledFishes: []MSGCalledFishInfo = 14
	inTimeHourGlass: []int = 15
	inViolent:	[]int = 16
}

MSGS2CPlayerShoot = 3 {
	playerId : int = 1
	bulletId : string = 2
	angle : string = 3
	gunRate : int = 4
	timelineId : int = 5
	fishArrayId : int = 6
	pointX : int = 7
	pointY : int = 8
	isViolent: bool = 9
	nViolentRatio: int = 10
}

MSGC2SPlayerShoot = 4 {
	bulletId : string = 1
	angle : string = 2
	gunRate: int = 3
	timelineId : int = 4
	fishArrayId : int = 5
	pointX : int = 6
	pointY : int = 7
	isViolent: bool = 8
}

MSGC2SHeartBeat = 5 {
	frameCount : int = 1
}

MSGS2CHeartBeat = 6 {
	frameCount : int = 1
}

MSGC2SPlayerHit = 7 {
	bulletId : string = 1
	frameId : int = 2
	killedFishes : []MSGFishInfo = 3
	effectedFishes : []MSGFishInfo = 4
}

MSGS2CPlayerHit = 8 {
	playerId : int = 1
	newFishIcon : int = 2
	bulletId : string = 3
	frameId : int = 4
	killedFishes : []MSGFishInfo = 5
	gunRate : int = 6
	dropProps : []MSGProp = 7
	dropCrystal : int = 8
	newCrystal : int = 9
	newThunderRate : int = 10
	dropSeniorProps : []MSGSeniorProp = 11
	randomFishScore : int = 12;变倍率鱼的分数
}

MSGC2SSetProp = 9 {
	newProps : []MSGProp = 1
}


MSGS2CSetProp = 10 {
	newProps : []MSGProp = 1
}

MSGS2CStartFishGroup = 11 {
	index : int = 1
}

MSGS2CStartTimeline = 12 {
	index : int = 1
}

MSGC2SGunRateChange = 13 {
	newGunRate : int = 1
}

MSGS2CGunRateChange = 14 {
	playerId : int = 1
	newGunRate : int = 2
}

MSGC2SBulletTargetChange = 15 {	
	bullets : []string = 1
	timelineId : int = 2
	fishArrayId : int = 3
}

MSGS2CBulletTargetChange = 16 {
	playerId : int = 1
	bullets : []string = 2
	timelineId : int = 3
	fishArrayId : int = 4
}

MSGC2SFreezeStart = 17 {
	useType : int = 1
}

MSGS2CFreezeResult = 18 {
	isSuccess : bool = 1
	useType : int = 2
	newCrystal : int = 3
}

MSGS2CFreezeStart = 19 {
	playerId : int = 1
	newCrystal : int = 2
}

MSGS2CFreezeEnd = 20 {
}

MSGC2SAim = 21 {
	timelineId : int = 1
	fishArrayId : int = 2
	useType : int = 3
}

MSGS2CAimResult = 22 {
	isSuccess : bool = 1
	useType : int = 2
	newCrystal : int = 3
	skillPlus : int = 4
}

MSGS2CAim = 23 {
	playerId : int = 1
	timelineId : int = 2
	fishArrayId : int = 3
	newCrystal : int = 4
}

MSGS2CPlayerJion = 24 {
	playerInfo : MSGPlayerInfo = 1
}

MSGS2CUpgrade = 25 {
	playerId : int  = 1
	newGrade : int = 2
	dropFishIcon : int = 3
	newFishIcon : int = 4
	dropCrystal : int = 5
	newCrystal : int = 6
	dropProps : []MSGProp = 7
	dropSeniorProps : []MSGSeniorProp = 8
}


MSGC2SUpgradeCannon = 26 {	
}

MSGS2CUpgradeCannonResult = 27 {
	playerId : int = 1
	isSuccess : bool = 2
	newFishIcon : int = 3
	newCrystal : int = 4
	costProps : []MSGProp = 5
	dropSeniorProps : []MSGSeniorProp = 6
	dropProps: []MSGProp = 7
}

MSGC2SAlmInfo = 28 {	
}

MSGS2CAlmInfo = 29 {
	leftCount : int = 1
	cd : int = 2
	totalCount : int = 3
}

MSGC2SApplyAlm = 30 {
}

MSGS2CApplyAlmResult = 31 {
	success : bool = 1
	newFishIcon : int = 2
	lectCount : int = 3
	totalCount : int = 4
	playerId : int = 5
}

MSGC2SGetUserInfo = 32 {	
}

MSGS2CFishGroupNotify = 33 {
	
}

MSGC2SDraw = 34 {
	drawGradeId : int = 1
}

MSGS2CDrawResult = 35 {
	playerId : int = 1
	isSuccess : bool = 2
	killRewardFishInDay : int = 3
	rewardRate : int = 4
	drawRequireRewardFishCount : int = 5
	props : []MSGProp = 6
	seniorProps : []MSGSeniorProp = 7
}

MSGS2CDrawStatusChange = 36 {
	killRewardFishInDay : int = 1
	rewardRate : int = 2
	drawRequireRewardFishCount : int = 3
}

MSGS2CGameAnnouncement = 37 {
	params : []string = 1
	announcementType : int = 2
	deskId : int = 3
	roomId : int = 4
	playerId : int = 5
}

MSGS2CHallAnnouncement = 38 {
	params : []string = 1
	announcementType : int = 2
	deskId : int = 3
	roomId : int = 4
	playerId : int = 5
}

MSGC2SCallFish = 39 {
	callFishId : int = 1
	useType : int = 2
}

MSGS2CCallFish = 40 {
	isSuccess: bool = 1
	playerId : int = 2
	useType : int = 3
	failType: int = 4
	newCrystal : int = 5
	callFishId : int = 6
	pathId : int = 7
	fishId : int = 8
	frameId : int = 9
}

MSGC2SGunTpyeChange = 41 {
	newGunType : int = 1
}

MSGS2CGunTpyeChange = 42 {
	isSuccess : bool = 1
	playerId : int = 2
	newGunType : int = 3
}

MSGC2SNBomb = 43 {
	pointX : int = 1
	pointY : int = 2
	nBombId : int = 3
	useType : int = 4
	nPropID :	int = 5
}

MSGS2CNBomb = 44 {
	isSuccess : bool = 1
	nBombId : int = 2
	useType : int = 3
	playerId : int = 4
	pointX : int = 5
	pointY : int = 6	
	newNBombRate : int = 7
	newCrystal : int = 8
	nPropID :	int = 9
}

MSGC2SNBombBlast = 45 {
	killedFishes : []MSGFishInfo = 1
	nBombId : int = 2
}

MSGS2CNBombBlast = 46 {
	isSuccess : bool = 1
	playerId : int = 2
	killedFishes : []MSGFishInfo = 3
	newNBombRate : int = 4
	newFishIcon : int = 5
	gunRate : int = 6
	failReason : int = 7
	useType : int = 8;使用方式
	nPropID :	int = 9;
}

MSGC2SLoginDraw = 47 {
	
}

MSGS2CLoginDraw = 48 {
	isSuccess : bool = 1
	props : []MSGProp = 2
	seniorProps : []MSGSeniorProp = 3
}

MSGC2SVipLoginDraw = 49 {
	
}

MSGS2CVipLoginDraw = 50 {
	isSuccess: bool = 1
	countUsed : int = 2
	props : []MSGProp = 3
	seniorProps : []MSGSeniorProp = 4
	failReason : int = 5
}

MSGC2SSignIn = 51{
	
}



MSGS2CSignIn = 52 {
	isSuccess : bool = 1
	props : []MSGProp = 2
	seniorProps : []MSGSeniorProp = 3
	newSignInDays : int = 4
}

MSGC2SGetMonthCardReward = 53 {	
}

MSGS2CGetMonthCardReward = 54 {
	isSuccess : bool = 1
	rewardItems : []MSGProp = 2
	seniorProps : []MSGSeniorProp = 3;高级道具
}

MSGC2SBuy = 55 {
	propId : int = 1
	count : int = 2;购买数量
}

MSGS2CBuy = 56 {
	isSuccess : bool = 1
	propId : int = 2
	propCount : int = 3
	newCrystal : int = 4
}

MSGS2CAnnounce = 57 {
	list : []string = 1
}

MSGC2SGetHallInfo = 58 {
	channelId : int = 1;渠道号
	version : string = 2;版本
}

MSGS2CGetHallInfo = 59 {
	playerInfo : MSGPlayerInfo = 1
	announce : MSGS2CAnnounce = 2
	firstLogin : bool = 3
	shareLinkUsed : bool = 4
	inviteCodeUsed : bool = 5
	unreadMails : []MSGMailAbstract = 6
	vipDailyRewardToken : bool = 7
	isFriendOpen : bool = 8;朋友场是否打开
	friendOpenTime : string = 9;开放时间,格式hh:mm:ss-hh:mm:ss
	enableDebug : bool = 10;启动调试
	isFriendFree : bool = 11;朋友场是否免费
	friendFreeTimeStart : string = 12;朋友场免费开始时间
	friendFreeTimeEnd : string = 13;朋友场免费结束时间
}

MSCC2SRechargeSuccess = 60 {
	
}

MSGC2SBankup = 61 {
	playerId : int = 1
}

MSGC2SShareLink = 62 {
	
}

MSGS2CShareLink = 63 {
	isSuccess : bool = 1
	props : []MSGProp = 2
	seniorProps : []MSGSeniorProp = 3
}

MSGC2SInviteCode = 64 {
	
}

MSGS2CInviteCode = 65 {
	isSuccess : bool = 2
	props : []MSGProp = 3
	seniorProps : []MSGSeniorProp = 4
}

MSGC2SGotoCharge = 66 {
	
}

MSGC2SBackFromCharge = 67 {
	
}

MSGC2SChangeNickName = 68 {
	newNickName : string = 1
	changeType : int = 2;0,普通修改，1，微信登陆
}

MSGS2CChangeNickName = 69 {
	isSuccess : bool = 1
	playerId : int = 2
	newNickName : string = 3
	changeType : int = 4;0,普通修改，1，微信登陆
}

MSGC2SGetMailDetail = 70 {
	id : int = 1
}

MSGS2CGetMailDetail = 71 {
	success : bool = 1
	id : int = 2
	title : string = 3
	sender : string = 4
	sendTime : string = 5
	content : string = 6
	props : []MSGProp = 7
	seniorProps : []MSGSeniorProp = 8
}


MSGC2SForge = 72 {
	useCrystalPower : bool = 1
}

MSGS2CForge = 73 {
	isSuccess : bool = 1
	newCrystalPower : int = 2
	newGunRate : int = 3;
}

MSGC2SDecompose = 74 {
	propId : int = 1
}

MSGS2CDecompose = 75 {
	isSuccess : bool = 1
	newCrystalPower : int = 2
}


MSGC2SEmoticon = 76 {
	emoticonId : int = 1
}

MSGS2CEmoticon = 77 {
	isSuccess : bool = 1
	playerId : int = 2
	emoticonId : int = 3
}

MSGC2SGetPlayerInfo = 78 {
	playerId : int = 1
}

MSGS2CGetPlayerInfo = 79 {
	isSuccess : bool = 1
	playerInfo : MSGPlayerInfo = 2
}


MSGBulletInfo = 80 {
	bulletId : string = 1
	playerId : int = 2
	frameCount : int = 3
	angle : string = 4
	timelineId : int = 5
	fishArrayId : int = 6
	pointX : int = 7
	pointY : int = 8
	isViolent : bool = 9
}

MSGFishInfo = 81 {
	timelineId : int = 1
	fishArrayId : int = 2
}

MSGChangeTargetBulletInfo = 82 {
	bulletId : string = 1
	timelineId : int = 2
	fishArrayId : int = 3
}

MSGPlayerInfo = 83 {
	playerId : int = 1
	fishIcon : int = 2
	gradeExp : int = 3
	maxGunRate : int = 4
	crystal : int = 5
	props : []MSGProp = 6
	currentGunRate : int = 7
	thunderRate : int = 8
	gunType : int = 9
	nBombRate : int = 10
	vipExp : int = 11
	loginDrawUsed : bool = 12
	vipDrawCountUsed : int = 13
	signInDays : int = 14
	hasSignToday : bool = 15
	leftMonthCardDay : int = 16
	monthCardRewardToken : bool = 17
	nickName : string = 18
	nickNameChangeCount : int = 19
	crystalPower : int = 20;结晶能量
	seniorProps : []MSGSeniorProp = 21; 高级道具列表
}

MSGProp = 84 {
	propId : int = 1
	propCount : int = 2
}

MSGCalledFishInfo  = 85 {
	frameId: int = 1
	pathId: int = 2
	fishTypeId: int = 3
	playerId : int = 4
	callFishId : int = 5
}

MSGMailAbstract = 86 { 
	id : int = 1
	title : string = 2
	sender : string = 3
	sendTime : string = 4
}

MSGC2SMarkMailAsRead = 87 {
	id : int = 1
}

MSGS2CMarkMailAsRead = 88 {
	success : bool = 1
	id : int = 2
	props : []MSGProp = 3
	seniorProps : []MSGSeniorProp = 4
}

MSGC2SMagicprop = 89 {
	magicpropId : int = 1
	toPlayerID : int = 2
}

MSGS2CMagicprop = 90 {
	isSuccess : bool = 1
	playerId : int = 2
	toPlayerID : int = 3
	magicpropId : int = 4
}

MSGC2SReceivePhoneFare = 91 {
	phoneNo : string = 1
	appId : string = 2
	appKey : string = 3
	channelId : string = 4
	version : string = 5
	areaCode : string = 6
	token : string = 7
}

MSGS2CReceivePhoneFare = 92 {
	success : bool = 1
	errorString : string = 2
}

MSGC2SGetVipDailyReward = 93 {
}

MSGS2CGetVipDailyReward = 94 {
	success : bool = 1
	props : []MSGProp = 2
	seniorProps : []MSGSeniorProp = 3
}

MSGC2SGetFriendStatus = 95 {;获取朋友场状态
}

MSGS2CGetFriendStatus = 96 {
	errorCode : int = 1;操作结果
	serverList : []MSGFriendServerItem = 2;服务器列表
	friendStatus : int = 3;朋友场状态，1：上一场未开始，2：正在游戏中，3：上一场未结算，4，不在游戏中
	friendRoomNo : string = 4;friendStatus=1,2才有效，朋友场中房间id
	friendGameId : string = 5;friendStatus=1,2才有效，场次id
	startTime : string = 6;friendStatus=1,2才有效，场次id，开始时间
	unreadFriendGameId : string = 7;friendStatus=4才有效，结算未读的朋友场id	
}

MSGFriendServerItem = 97 {
	prefix : string = 1;
	roomId : int = 2;房间号，如102,103
}

MSGC2SGetFriendHistory = 98 {;获取朋友场历史列表
}

MSGS2CGetFriendHistory = 99 {
	items : []MSGFriendHistoryItem = 1
}

MSGFriendHistoryItem = 100 {
	time : string = 1;
	creatorNickName : string = 2;
	friendRoomNo : string = 3;房间号
	friendGameId : string = 4;场次id
	items : []MSGFriendDetailItem = 5;名次数据
	creatorPlayerId : int = 6;创建者玩家id
}

MSGC2SGetFriendDetail = 101 {;获取朋友场详细信息
	friendGameId : string = 1;场次id
}

MSGS2CGetFriendDetail = 102 {;
	success : bool = 1
	friendGameId : string = 2;场次id
	items : []MSGFriendDetailItem = 3
}

MSGFriendDetailItem = 103 {
	order : int = 1
	nickName : string = 2
	score : int = 3
	leftBullet : int = 4
	playerId : int = 5
}

MSGC2SCreateFriendRoom = 104 {
	roomPropType : int = 1;道具类型,0:不带怼人道具，1:带怼人道具
	roomPeopleCountType : int = 2;人数类型，0:2人，1:3人，2:4人
	roomDurationType : int = 3;时长类型,0:8分钟，1,24分钟
	roomCardType : int = 5;房卡类型 0,游戏内房卡，1，平台房卡
	agent : bool = 6;是否代开，如果代开，roomCardType必须=1，即使用平台房卡
	appId : string = 7;appid,使用平台房卡必须传
	appKey : string = 8;appkey,使用平台房卡必须传
	channelId : string = 9;channelId使用平台房卡必须传
	version : string = 10;version,使用平台房卡必须传
	areaCode : string = 11;地区码,使用平台房卡必须传
	token : string = 12;token使用平台房卡必须传
}

MSGS2CCreateFriendRoom = 105 {
	success : bool = 1
	friendRoomNo : string = 2
	deskId : int = 3
	errorCode : int = 4; 0:成功， 1:已经在房间，2:无可用房间,3:无房卡,4:朋友场服务器已关闭,5,参数不合法,6,使用平台房卡失败，具体错误消息见webMsg字段
	webMsg : string = 5; 使用平台房卡创建房间失败的错误原因
	agent : bool = 6;是否代开
	free : bool = 7;是否免费
}

MSGC2SJoinFriendRoom = 106 {;加入朋友场
	friendRoomNo : string = 1;房间Id
	friendGameId : string = 2;场次id,用于断线重连的用户，新用户请置空
	appId : string = 3;appId
	headPath : string = 4;头像
}

MSGS2CJoinFriendRoom = 107 {
	success : bool = 1;是否成功
	errorCode : int = 2;错误码,0:成功，1：桌子不存在，2：游戏一开始，3：游戏已结束，4，玩家已经离开，5桌子已经满了，6朋友场服务器已关闭
}

MSGC2SFriendGameLoaded = 108 {;游戏加载完成
}

MSGS2CFriendGameLoaded = 109 {
	roomInfo : MSGFriendGameInfo = 3
}

MSGFriendGameInfo = 110 {
	frameId : int = 1;帧号
	timelineIndex: int = 2;时间线id
	bullets : []MSGBulletInfo = 3;子弹
	killedFishes : []MSGFishInfo =4;被杀死的鱼的列表
	playerInfos: []MSGFriendPlayerInfo = 5;房间内所有玩家状态
	started : bool = 6;是否开始
	leftTime : int = 7;剩余时间
	creatorPlayerId : int = 8;创建者玩家id
	
	roomPropType : int = 9;道具类型,0:不带怼人道具，1:带怼人道具
	roomPeopleCountType : int = 10;人数类型，0:2人，1:3人，2:4人
	roomDurationType : int = 11;时长类型,0:8分钟，1,24分钟
	startedMs : int = 12;已开始时间，毫秒
	isFriendFree : bool = 13;朋友场是否免费
	agent : bool = 14;是否代开
}

MSGFriendPlayerInfo = 111 {
	playerId : int = 1;玩家id
	chairId : int = 2;椅子id
	nickName : string = 3;昵称
	ready : bool = 4;是否就绪
	score : int = 5;积分
	bulletUsed : int = 6;已使用子弹
	effects : []MSGFriendPlayerEffect = 7;玩家身上的效果
	isDisonnected : bool = 8;是否掉线
	friendProps : []MSGProp = 9;朋友场道具
	currentGunRate : int = 10;炮倍
	gunType : int = 11;炮类型
	vipExp : int = 12;vip经验
	crystal : int = 13;水晶
	leftMonthCardDay : int = 14;剩余月卡天数
	gradeExp : int = 15;等级经验
	maxGunRate : int = 16;普通场最大炮倍
	isLeave : bool = 17;是否已经离开
}

MSGFriendPlayerEffect = 112 {
	effectId : int = 1;效果id
	extraData : int = 2;附加数据，狂暴，瞄准：剩余毫秒数，虚弱：剩余虚弱的子弹数，诅咒：被诅咒的次数
}

MSGC2SFriendReady = 113 {
	initFriendProps : []int = 1;初始朋友场道具
}

MSGS2CFriendReady = 114 {
	playerId : int = 1;玩家id
	initFriendProps : []MSGProp = 2;初始朋友场道具
}

MSGS2CFriendOtherPlayerJoin = 115 {
	info : MSGFriendPlayerInfo = 1;玩家信息
}

MSGC2SFriendStartGame = 116 {;开始朋友场，只有房主才能使用	
}

MSGS2CFriendStartGame = 117 {;成功将广播，失败只传回给发送者
	success : bool = 1;
	errorCode : int = 2;0:成功， 1:准备的人数小于2,已经开始3:不是房主
	timelineId : int = 3;时间线id
}

MSGC2SFriendLeaveGame = 118 {;离开朋友场游戏，视为放弃游戏，不再保留作为
	friendGameId : string = 1;朋友场的场次id,如果正在游戏中不需要填，普通场发出该请求必填
}

MSGS2CFriendLeaveGame = 119 {
	playerId : int = 1;
}

MSGC2SFriendMarkAsRead = 120 {;将某一场标记为已读
	friendGameId : string = 1;
}

MSGSeniorProp = 121 {;高级道具
	propItemId : int = 1;道具id
	propId : int = 2;道具类型id
	stringProp : string = 3;字符串属性
	intProp1 : int = 4;int属性1
	intProp2 : int = 5;int属性2
}

MSGS2CFriendPlayerDisconnect = 122 {;玩家断线
	playerId : int = 1;玩家id
}

MSGS2CFriendPlayerReconnect = 123 {;断线重连
	playerInfo : MSGFriendPlayerInfo = 1;玩家数据
}

MSGS2CFriendServerReady = 124 {;朋友场服务器就绪
}

MSGS2CFriendPlayerGunRateChange = 125 {;炮倍变化消息
	playerId : int = 1;
	gunRate : int = 2;	
}

MSGS2CFriendSendReward = 126 {;发放奖励
	playerId : int = 1;玩家id
	level : int = 2;档位
	props : []MSGProp = 3;奖励列表
	seniorProps : []MSGSeniorProp = 4
}

MSGC2SFriendCloseGame = 127{;解散房间，只有房主才能调用
}

MSGS2CFriendGameOver = 128  {;房间结束
	reason : int = 1 ;结束原因，1：房主解散，2：时间到，3：超時未開始
	items : []MSGFriendDetailItem = 2;道具

}

MSGC2SFriendUseProp = 129 {;使用道具
	targetPlayerId : int = 1;目标id
	propId : int = 2;使用的道具id
}

MSGS2CFriendUseProp = 130 {
	success : bool = 1;是否成功
	errorCode : int = 2;错误码, 0，成功 1，无效的道具id 2，目标不存在  3，道具不足
	playerId : int = 3;使用道具的玩家id，success=true有效
	targetPlayerId : int = 4;被施放道具的玩家id，如果道具属于对自己使用的，这个字段，success=true有效
	propId : int = 5;
}

MSGC2SFriendPlayerHit = 131 {;碰撞消息
	bulletId : string = 1;子弹id
	frameId : int = 2;帧号
	killedFishes : []MSGFishInfo = 3;碰撞的鱼
}

MSGS2CFriendPlayerHit = 132 {
	playerId : int = 1
	leftBullet : int = 2
	bulletId : string = 3
	frameId : int = 4
	killedFishes : []MSGFishInfo = 5
	gunRate : int = 6
	newScore : int = 7;新的分数
	effects : []int = 8;子弹 效果
	dropProps : []MSGProp = 9;掉落的道具
	dropSeniorProps : []MSGSeniorProp = 10;掉落的高级道具
}

MSGC2SGetAllTaskInfo = 133 {

}

MSGS2CGetAllTaskInfo = 134 {
	TaskInfo :[]MSGS2CGetTaskInfo = 1;
	TaskTreasureChest:[]string = 2;
}

MSGS2CGetTaskInfo = 135 {
	nTaskID : int =1 ; 任务ID
	nTaskNum : int = 2; 任务进度
	isReward : bool = 3;是否已领取奖励
}

MSGC2SGetTaskReward = 136 {
	nTaskID : int =1 ; 任务ID
}

MSGS2CGetTaskReward = 137 {
	nTaskID:    int  = 1;
	isSuccess : bool = 2 ; 是否成功
}
MSGC2SGetActiveReward = 138 {
	ActiveGrade : int =1; 获取值档次
}
MSGS2CGetActiveReward = 139 {
	ActiveGrade : int =1; 获取值档次
	isSuccess : bool = 2;  是否成功
	props : []MSGProp = 3;
	seniorProps : []MSGSeniorProp = 4;
}

MSGS2CHaveFinishTask = 140 {
	nTaskID : int =1;
} 
MSGC2SUseTimeHourglass = 141 { 
	useType : int = 1; 0:表示直接用道具 1：表示使用水晶
}
MSGS2CUseTimeHourglass = 142 { 
	isSuccess : bool = 1; 
	useType : int = 2; 0:表示直接用道具 1：表示使用水晶
	nTimeRemain: int = 3; 倒计时时间 单位:秒
	nFishIcon:	int = 4; 使用时的鱼币
	playerID: int	= 5; 玩家ID
}
MSGC2SStopTimeHourglass = 143 { 
	useType : int = 1; 0:表示正常使用结束 1：中断使用
}
MSGS2CStopTimeHourglass = 144 { 
	isSuccess : bool = 1; 
	useType : int = 2; 0:表示正常使用结束 1：中断使用
	nFishIcon: int = 3; 当前的鱼币
	playerID: int	= 4; 玩家ID
}
MSGC2SGetTimeHourglass = 145 {
}
MSGS2CGetTimeHourglass = 146 {
	isSuccess : bool = 1; 如果有正在使用的时光沙漏就返回成功 ，没有就返回失败
	nTimeRemain: int = 2; 倒计时时间 单位:秒
	nFishIcon:	int = 3; 使用时的鱼币
}
MSGC2SContinueTimeHourglass = 147 {
}
MSGS2CContinueTimeHourglass = 148 {
	isSuccess : bool = 1; 掉线回来 继续原先的时光沙漏计时
	nTimeRemain: int = 2; 倒计时时间 单位:秒
	nFishIcon:	int = 3; 使用时的鱼币
	playerID: int	= 4; 玩家ID
}
MSGS2CIsOnTimehourGlass = 149 {;正处于时光沙漏效果中不能使用鱼币
}

MSGC2SViolent = 150 {
	useType : int = 3
}

MSGS2CViolent = 151 {
	isSuccess : bool = 1
	useType : int = 2
	newCrystal : int = 3
	playerID : int = 4
}
MSGS2CViolentTimeOut = 152 {
	playerId : int =1
}
MSGC2SUsePropCannon = 153 {
	useType : int =1
	propID : int = 2
}
MSGS2CUsePropCannon = 154 {
	isSuccess : bool = 1
	useType : int = 2
	newCrystal : int = 3
	playerID : int = 4
	propInfo : MSGSeniorProp = 5
}
MSGC2SGetNewTaskInfo = 155 {
	
}
MSGS2CGetNewTaskInfo = 156 { ;获取新手任务信息
	isSuccess : bool = 1
	nTaskID : int = 2
	nTaskData : int =3
}
MSGC2SGetNewTaskReward = 157 {;领取新手任务奖励
	nTaskID : int = 1
}
MSGS2CGetNewTaskReward = 158{
	isSuccess : bool = 1
	nPropID: int =2
	nPropNum: int = 3
	SeniorProps : []MSGSeniorProp = 4
	playerID : int = 5
}

MSGC2SSellItem = 159 {
	propId : int = 1; 道具id
	propItemId : int = 2; 用于高级道具
	count : int = 3;出售个数
}

MSGS2CSellItem = 160 {
	errorCode : int = 1; 错误码 0:成功，1:道具数量不足, 2:道具不存在，3:道具不可出售
	dropPropId : int = 2;获得的道具id
	dropPropCount : int = 3;获得的道具个数
	dropPropNewValue : int = 4;新的道具总个数
	propId : int = 5; 道具id
	propItemId : int = 6; 用于高级道具
	count : int = 7;出售个数
}
MSGC2SSetViolentRatio = 161 {
	nRatio : int  = 1
}
MSGS2CSetViolentRatio = 162 {
	nRatio : int  = 1
	isSuccess : bool = 2
}

MSGS2CFriendPlayerShoot = 170 {
	playerId : int = 1
	bulletId : string = 2
	angle : string = 3
	gunRate : int = 4
	timelineId : int = 5
	fishArrayId : int = 6
	pointX : int = 7
	pointY : int = 8
	effects : []int = 9;
}

MSGC2SFriendPlayerShoot = 171 {
	bulletId : string = 1
	angle : string = 2
	gunRate: int = 3
	timelineId : int = 4
	fishArrayId : int = 5
	pointX : int = 6
	pointY : int = 7
	effects : []int = 8
}

MSGS2CFriendClearEffects = 172 {;清空所有效果
}

MSGS2CFriendEffectUpdate = 173 {;更新玩家的效果
	playerId : int = 1;
	effects : []MSGFriendPlayerEffect = 2;
}

MSGC2SFriendGetPlayerInfo = 174 {;获取玩家数据
	playerId : int = 1;
}

MSGS2CFriendGetPlayerInfo = 175 {
	success : bool = 1;
	playerInfo : MSGFriendPlayerInfo = 2
}

MSGC2SFriendKickOut = 176 {;房主踢人
	playerId : int = 1;
}

MSGS2CFriendKickOut = 177 {
	errorCode : int = 1; 0成功，1，玩家不存在，2，游戏已开始，3不是房主
	playerId : int = 2;
}

MSGS2CForbidAccount = 178 {
	code : int = 1;错误码
	msg : string = 2;错误描述
}

MSGS2CFriendStartTimeline = 179 {
	timelineId : int = 1;鱼线id
}

MSGC2SFriendRefreshRunningList = 180 {;申请刷新正在进行的代开列表
}

MSGS2CFriendRefreshRunningList = 181 {;正在进行的代开列表
	list : []MSGFriendRunningItemData = 1;
}

MSGC2SFriendRefreshHelpOpenList = 182 {;申请刷新历史代开列表
}

MSGS2CFriendRefreshHelpOpenList = 183 {;历史代开列表
	list : []MSGFriendRunningItemData = 1;
}

MSGFriendRunningItemData = 184 {;代开房间的数据
	friendGameId : string = 1;朋友场的场次id
	createTime : string = 2;创建时间,格式hh:mm:ss-hh:mm:ss
	roomPropType : int = 3;道具类型,0:不带怼人道具，1:带怼人道具
	roomPeopleCountType : int = 4;人数类型，0:2人，1:3人，2:4人
	roomDurationType : int = 5;时长类型,0:8分钟，1,24分钟
	roomCardType : int = 6;房卡类型 0,游戏内房卡，1，平台房卡
	playerList : []MSGFriendPlayerItemData = 7;玩家列表
	friendRoomNo : string = 8;房间号
}

MSGFriendPlayerItemData = 185 {;代开房间进入玩家的数据
	playerId : int = 1;玩家id
	nickName : string = 2;玩家昵称
	headPath : string = 3;玩家头像
	state : int = 4;玩家状态，0:刚进入，1:已准备，2:离开
	score : int = 5;玩家积分
	chairId : int = 6;玩家椅子id
}

MSGS2CFriendRunningStart = 186 {;代开房间开始游戏
	friendGameId : string = 1;朋友场的场次id
}

MSGC2SFriendStartMonitorRunningList = 187 {;申请添加监听代开房间的消息
}

MSGC2SFriendCancelMonitorRunningList = 188 {;申请取消监听代开房间的消息
}

MSGS2CFriendPlayerStateChange = 189 {;玩家状态改变
	friendGameId : string = 1;朋友场的场次id
	playerData : MSGFriendPlayerItemData = 2;玩家数据
}

MSGC2SFriendDissolveRoom = 190 {;申请解散房间
	friendGameId : string = 1;朋友场的场次id
}

MSGS2CFriendDissolveRoom = 191 {;确认是否解散
	errorCode : int = 1;0成功，1，房间不存在，2，游戏已开始，3不是房主
	friendGameId : string = 2;朋友场的场次id
}

]]
return a