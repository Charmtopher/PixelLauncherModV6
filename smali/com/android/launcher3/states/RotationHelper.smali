.class public Lcom/android/launcher3/states/RotationHelper;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAutoRotateEnabled:Z

.field public final mCr:Landroid/content/ContentResolver;

.field private mCurrentStateRequest:I

.field public mDestroyed:Z

.field private final mIgnoreAutoRotateSettings:Z

.field public mInitialized:Z

.field private mLastActivityFlags:I

.field private mStateHandlerRequest:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    .line 54
    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    .line 64
    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Landroid/app/Activity;

    .line 67
    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    .line 68
    iget-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCr:Landroid/content/ContentResolver;

    .line 70
    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCr:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCr:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mAutoRotateEnabled:Z

    return-void

    .line 73
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCr:Landroid/content/ContentResolver;

    .line 75
    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 4

    .line 114
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    const/16 v1, 0xe

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 120
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    if-ne v0, v2, :cond_1

    .line 121
    goto :goto_2

    :cond_1
    goto :goto_1

    .line 122
    :cond_2
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    if-ne v0, v2, :cond_3

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 126
    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mAutoRotateEnabled:Z

    if-eqz v0, :cond_5

    .line 128
    const/4 v1, 0x5

    goto :goto_2

    .line 132
    :cond_5
    goto :goto_1

    .line 125
    :cond_6
    :goto_0
    nop

    .line 134
    :goto_1
    move v1, v3

    :goto_2
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    if-eq v1, v0, :cond_7

    .line 135
    iput v1, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 138
    :cond_7
    return-void

    .line 115
    :cond_8
    :goto_3
    return-void
.end method

.method public onChange(Z)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCr:Landroid/content/ContentResolver;

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mAutoRotateEnabled:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 81
    return-void
.end method

.method public final setCurrentStateRequest(I)V
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    if-eq v0, p1, :cond_0

    .line 92
    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 95
    :cond_0
    return-void
.end method

.method public final setStateHandlerRequest(I)V
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    if-eq v0, p1, :cond_0

    .line 85
    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 88
    :cond_0
    return-void
.end method
