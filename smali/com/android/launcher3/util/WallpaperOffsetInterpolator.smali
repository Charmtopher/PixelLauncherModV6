.class public Lcom/android/launcher3/util/WallpaperOffsetInterpolator;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final sTempInt:[I


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field private final mIsRtl:Z

.field public mLockedToDefaultPage:Z

.field private mNumScreens:I

.field private mRegistered:Z

.field private mWallpaperIsLiveWallpaper:Z

.field public mWindowToken:Landroid/os/IBinder;

.field private final mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 44
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    .line 45
    new-instance v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private updateOffset()V
    .locals 5

    .line 148
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 149
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    goto :goto_0

    .line 151
    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    invoke-static {v2, v1, v0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method


# virtual methods
.method public final getNumScreensExcludingEmpty()I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 123
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    add-int/lit8 v0, v0, -0x1

    return v0

    .line 126
    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 177
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    .line 178
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset()V

    .line 179
    return-void
.end method

.method public final setWindowToken(Landroid/os/IBinder;)V
    .locals 2

    .line 162
    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    .line 163
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    return-void

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    if-nez p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 170
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    .line 172
    :cond_1
    return-void
.end method

.method public final syncWithScroll()V
    .locals 7

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScreensExcludingEmpty()I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(II[I)V

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    const/4 v6, 0x2

    invoke-static {v1, v6, v2, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 135
    iget v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq v0, v2, :cond_1

    .line 136
    iget v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    if-lez v2, :cond_0

    .line 138
    iput v4, v1, Landroid/os/Message;->what:I

    .line 140
    :cond_0
    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    .line 141
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset()V

    .line 143
    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public final wallpaperOffsetForScroll(II[I)V
    .locals 6

    .line 65
    const/4 v0, 0x1

    aput v0, p3, v0

    .line 69
    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-gt p2, v0, :cond_0

    goto :goto_3

    .line 76
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    if-eqz v1, :cond_1

    .line 82
    move v1, p2

    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x4

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 82
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v3, :cond_2

    .line 83
    nop

    .line 84
    add-int v3, v2, p2

    sub-int/2addr v3, v0

    .line 91
    move v4, v2

    goto :goto_1

    .line 86
    :cond_2
    nop

    .line 87
    add-int v3, v2, p2

    sub-int/2addr v3, v0

    .line 91
    move v4, v3

    move v3, v2

    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v3

    .line 92
    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v4

    .line 93
    sub-int/2addr v4, v3

    .line 94
    if-gtz v4, :cond_3

    .line 95
    aput v2, p3, v2

    .line 96
    return-void

    .line 101
    :cond_3
    sub-int/2addr p1, v3

    iget-object v3, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 102
    invoke-virtual {v3, v2}, Lcom/android/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v3

    sub-int/2addr p1, v3

    .line 103
    invoke-static {p1, v2, v4}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 104
    sub-int/2addr v1, v0

    mul-int/2addr v1, v4

    aput v1, p3, v0

    .line 108
    nop

    .line 109
    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v1, :cond_4

    .line 111
    aget v1, p3, v0

    add-int/lit8 v3, p2, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    goto :goto_2

    .line 113
    :cond_4
    move v1, v2

    :goto_2
    sub-int/2addr p2, v0

    mul-int/2addr p1, p2

    add-int/2addr v1, p1

    aput v1, p3, v2

    .line 114
    return-void

    .line 70
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    aput p1, p3, v2

    .line 71
    return-void
.end method
