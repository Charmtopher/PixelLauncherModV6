.class public Lcom/android/launcher3/notification/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field private static sIsConnected:Z

.field private static sIsCreated:Z

.field private static sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

.field private static sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

.field private static sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;


# instance fields
.field public mLastKeyDismissedByLauncher:Ljava/lang/String;

.field private mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

.field private final mNotificationGroupKeyMap:Ljava/util/Map;

.field private final mNotificationGroupMap:Ljava/util/Map;

.field private final mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mUiCallback:Landroid/os/Handler$Callback;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerCallback:Landroid/os/Handler$Callback;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 143
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 71
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupKeyMap:Ljava/util/Map;

    .line 82
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/NotificationListener$1;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    .line 113
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/NotificationListener$2;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    .line 146
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/notification/NotificationListener;[Landroid/service/notification/StatusBarNotification;)Ljava/util/List;
    .locals 4

    .line 55
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/android/launcher3/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method static synthetic access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public static getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;
    .locals 1

    .line 172
    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private onNotificationFullRefresh()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public static removeNotificationsChangedListener()V
    .locals 1

    .line 195
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 196
    return-void
.end method

.method public static removeStatusBarNotificationsChangedListener()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    .line 200
    return-void
.end method

.method public static setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 1

    .line 176
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 178
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object p0

    .line 179
    if-eqz p0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    return-void

    .line 181
    :cond_0
    sget-boolean p0, Lcom/android/launcher3/notification/NotificationListener;->sIsCreated:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    if-eqz p0, :cond_1

    .line 184
    sget-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {p0, v0}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationFullRefresh(Ljava/util/List;)V

    .line 187
    :cond_1
    return-void
.end method

.method public static setStatusBarNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;)V
    .locals 0

    .line 191
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    .line 192
    return-void
.end method

.method private shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    .line 355
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 357
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->updateGroupKeyIfNecessary(Landroid/service/notification/StatusBarNotification;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationListener;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1, p1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 360
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 361
    return v1

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "miscellaneous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 366
    return v1

    .line 370
    :cond_1
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 371
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 373
    move p1, v1

    goto :goto_0

    .line 372
    :cond_2
    nop

    .line 373
    move p1, v3

    :goto_0
    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 374
    move v0, v1

    goto :goto_1

    .line 373
    :cond_3
    nop

    .line 374
    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v3

    :cond_5
    :goto_2
    return v1
.end method

.method private updateGroupKeyIfNecessary(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 288
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupKeyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 291
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupKeyMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationGroup;

    .line 297
    invoke-virtual {v3, v0}, Lcom/android/launcher3/notification/NotificationGroup;->removeChildKey(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v3}, Lcom/android/launcher3/notification/NotificationGroup;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 305
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationGroup;

    .line 306
    if-nez v1, :cond_2

    .line 307
    new-instance v1, Lcom/android/launcher3/notification/NotificationGroup;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationGroup;-><init>()V

    .line 308
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 312
    :goto_0
    if-eqz p1, :cond_4

    .line 313
    iput-object v0, v1, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    return-void

    .line 315
    :cond_4
    iget-object p1, v1, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 151
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 152
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsCreated:Z

    .line 153
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$3;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationListener;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/notification/NotificationListener$3;-><init>(Lcom/android/launcher3/notification/NotificationListener;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    const-string v1, "notification_badging"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/util/SettingsObserver;->register(Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 167
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsCreated:Z

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    invoke-interface {v0}, Lcom/android/launcher3/util/SettingsObserver;->unregister()V

    .line 169
    return-void
.end method

.method public onListenerConnected()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 205
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 206
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    .line 207
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 217
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 221
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;-><init>(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    .line 280
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 281
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 283
    invoke-direct {p0, v2}, Lcom/android/launcher3/notification/NotificationListener;->updateGroupKeyIfNecessary(Landroid/service/notification/StatusBarNotification;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 246
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 247
    new-instance v0, Landroid/util/Pair;

    .line 248
    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    .line 249
    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationGroup;

    .line 257
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 258
    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationGroup;->removeChildKey(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationGroup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotification(Ljava/lang/String;)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 269
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    .line 271
    :cond_3
    return-void
.end method
