.class public Lcom/android/launcher3/notification/NotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final autoCancel:Z

.field public final dismissable:Z

.field public final intent:Landroid/app/PendingIntent;

.field private mBadgeIcon:I

.field private mIconColor:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsIconLarge:Z

.field public final notificationKey:Ljava/lang/String;

.field public final packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field public final text:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p2}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 63
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 65
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    .line 66
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    .line 71
    iget v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 72
    move-object v1, v2

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 72
    :goto_0
    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 74
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    .line 77
    iput-boolean v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-boolean v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    .line 83
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 84
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 85
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 86
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iput v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    .line 89
    :cond_3
    iget-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    .line 90
    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    iput-boolean p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    .line 91
    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->dismissable:Z

    .line 92
    return-void
.end method


# virtual methods
.method public final getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 120
    :cond_0
    iget v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    .line 121
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 124
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 125
    iget p2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 126
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 100
    nop

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 100
    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 103
    const/4 v1, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v5

    new-array v6, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v7, v2, Lcom/android/launcher3/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-static {p1, v7}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v5, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/launcher3/logging/UserEventDispatcher;->mUuidStr:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v2, v5, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 108
    :goto_0
    iget-boolean p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, v0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/BaseDraggingActivity;I)V

    .line 113
    return-void
.end method
