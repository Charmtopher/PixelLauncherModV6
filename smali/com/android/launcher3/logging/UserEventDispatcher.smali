.class public Lcom/android/launcher3/logging/UserEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IS_VERBOSE:Z


# instance fields
.field public mActionDurationMillis:J

.field public mElapsedContainerMillis:J

.field public mElapsedSessionMillis:J

.field public mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

.field private mIsInLandscapeMode:Z

.field private mIsInMultiWindowMode:Z

.field public mUuidStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/logging/UserEventDispatcher;->IS_VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillComponentInfo(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Landroid/content/ComponentName;)V
    .locals 2

    .line 184
    if-eqz p2, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mUuidStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mUuidStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    iput p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    .line 188
    :cond_0
    return-void
.end method

.method public static getLaunchProviderRecursive(Landroid/view/View;)Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;
    .locals 3

    .line 108
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 115
    const/4 v1, 0x5

    .line 116
    :goto_0
    if-eqz p0, :cond_1

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 117
    instance-of v1, p0, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    if-eqz v1, :cond_0

    .line 118
    check-cast p0, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    return-object p0

    .line 120
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 116
    move v1, v2

    goto :goto_0

    .line 123
    :cond_1
    return-object v0

    .line 111
    :cond_2
    return-object v0
.end method

.method private static getTargetsStr([Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;
    .locals 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "child:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->getTargetStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tparent:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->getTargetStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_0
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/logging/UserEventDispatcher;
    .locals 4

    .line 72
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    const-string v1, "uuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    if-nez v1, :cond_0

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    :cond_0
    const-class v0, Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0019

    .line 78
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 80
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInLandscapeMode:Z

    .line 81
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    iput-boolean p1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInMultiWindowMode:Z

    .line 82
    iput-object v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mUuidStr:Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 84
    return-object v0
.end method


# virtual methods
.method public dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V
    .locals 6

    .line 388
    iget-boolean p2, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInLandscapeMode:Z

    iput-boolean p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    .line 389
    iget-boolean p2, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInMultiWindowMode:Z

    iput-boolean p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedSessionMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    .line 393
    sget-boolean p2, Lcom/android/launcher3/logging/UserEventDispatcher;->IS_VERBOSE:Z

    if-nez p2, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "action:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->getActionStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 397
    iget-object v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n Source "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->getTargetsStr([Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 400
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n Destination "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->getTargetsStr([Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 403
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\n Elapsed container %d ms, session %d ms, action %d ms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    .line 405
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    .line 406
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    .line 407
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 403
    invoke-static {p2, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n isInLandscapeMode "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n isInMultiWindowMode "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 411
    const-string p2, "UserEvent"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public final fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z
    .locals 4

    .line 147
    invoke-static {p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->getLaunchProviderRecursive(Landroid/view/View;)Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ItemInfo;

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 152
    iget-object v3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v3, v1

    iget-object p1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-interface {v0, p2, v2, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 153
    return v3

    .line 149
    :cond_1
    :goto_0
    return v1
.end method

.method public final fillIntentInfo(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Landroid/content/Intent;)V
    .locals 1

    .line 179
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillComponentInfo(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Landroid/content/ComponentName;)V

    .line 181
    return-void
.end method

.method public final logActionCommand(III)V
    .locals 0

    .line 204
    invoke-static {p2}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p2

    .line 205
    if-ltz p3, :cond_0

    invoke-static {p3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 204
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 206
    return-void
.end method

.method public final logActionCommand(ILandroid/view/View;I)V
    .locals 5

    .line 222
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newCommandAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v1, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 223
    invoke-static {p2, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 222
    invoke-static {p1, v0}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 228
    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v2

    iput v1, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    .line 229
    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v2

    iput p3, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 231
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public final logActionCommand(ILcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 3

    .line 209
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newCommandAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    .line 210
    if-eqz p3, :cond_0

    .line 211
    new-array p2, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iput-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 212
    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aput-object p3, p2, v2

    .line 213
    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput-boolean v0, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    .line 215
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public final logActionOnContainer(IIII)V
    .locals 2

    .line 277
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 278
    invoke-static {p3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 277
    invoke-static {p1, v0}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    .line 279
    iget-object p3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    .line 280
    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v1

    iput p4, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 281
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public final logActionOnControl(II)V
    .locals 2

    .line 235
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;I)V

    .line 236
    return-void
.end method

.method public final logActionOnControl(IILandroid/view/View;)V
    .locals 1

    .line 243
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;I)V

    .line 244
    return-void
.end method

.method public final logActionOnControl(IILandroid/view/View;I)V
    .locals 6

    .line 248
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p3, :cond_0

    if-gez p4, :cond_0

    .line 249
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v3

    new-array v4, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v3

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v3

    new-array v4, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x3

    .line 251
    invoke-static {v5}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v4, v0

    .line 250
    invoke-static {v3, v4}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v3

    .line 252
    :goto_0
    iget-object v4, v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v4, v1

    iput p2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    .line 253
    if-eqz p3, :cond_1

    .line 254
    invoke-virtual {p0, v3, p3}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    .line 256
    :cond_1
    if-ltz p4, :cond_2

    .line 257
    iget-object p2, v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v0

    iput p4, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 259
    :cond_2
    if-ne p1, v2, :cond_3

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mActionDurationMillis:J

    sub-long/2addr p1, p3

    iput-wide p1, v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    .line 262
    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method public final logActionTapOutside(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 4

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    .line 268
    iget-object v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput-boolean v2, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 5

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v3, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 158
    invoke-static {p1, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 157
    invoke-static {v1, v2}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    .line 160
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillIntentInfo(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Landroid/content/Intent;)V

    .line 163
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public final logStateChangeAction(IIIIII)V
    .locals 4

    .line 295
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-ne p3, v3, :cond_0

    .line 296
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 297
    invoke-static {p3}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    aput-object p3, v0, v2

    .line 298
    invoke-static {p4}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    aput-object p3, v0, v1

    .line 296
    invoke-static {p1, v0}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 301
    invoke-static {p3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    aput-object p3, v0, v2

    .line 302
    invoke-static {p4}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    aput-object p3, v0, v1

    .line 300
    invoke-static {p1, v0}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    .line 304
    :goto_0
    new-array p3, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iput-object p3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 305
    iget-object p3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {p5}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p4

    aput-object p4, p3, v2

    .line 306
    iget-object p3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    .line 307
    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput-boolean v1, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    .line 308
    iget-object p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v2

    iput p6, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 309
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 310
    const-string p1, "state changed"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public logTaskLaunchOrDismiss(IILcom/android/launcher3/util/ComponentKey;)V
    .locals 4

    .line 167
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 168
    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 167
    invoke-static {v0, v2}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 169
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 171
    :cond_0
    iget-object p1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    .line 173
    :cond_1
    iget-object p1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v3

    const/16 p2, 0x9

    iput p2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 174
    iget-object p1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v3

    iget-object p2, p3, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillComponentInfo(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Landroid/content/ComponentName;)V

    .line 175
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public final resetElapsedContainerMillis(Ljava/lang/String;)V
    .locals 3

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    .line 371
    sget-boolean v0, Lcom/android/launcher3/logging/UserEventDispatcher;->IS_VERBOSE:Z

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    const-string v0, "UserEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetElapsedContainerMillis reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method
