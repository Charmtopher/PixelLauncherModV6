.class public abstract Lcom/android/launcher3/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final INVISIBLE_ALL:I = 0x3

.field public static final INVISIBLE_BY_APP_TRANSITIONS:I = 0x2

.field public static final INVISIBLE_BY_STATE_HANDLER:I = 0x1


# instance fields
.field private final mDPChangeListeners:Ljava/util/ArrayList;

.field public mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mForceInvisible:I

.field private final mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

.field private mStarted:Z

.field protected mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

.field private mUserActive:Z

.field public mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;
    .locals 1

    .line 86
    instance-of v0, p0, Lcom/android/launcher3/BaseActivity;

    if-eqz v0, :cond_0

    .line 87
    check-cast p0, Lcom/android/launcher3/BaseActivity;

    return-object p0

    .line 89
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public addForceInvisibleFlag(I)V
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 174
    return-void
.end method

.method public addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public clearForceInvisibleFlag(I)V
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 178
    return-void
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    iget-object v2, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v1, v2}, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;->onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/launcher3/util/SystemUiController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object v0
.end method

.method public final getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static {p0, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    return-object v0
.end method

.method public isForceInvisible()Z
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInMultiWindowModeCompat()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    return v0
.end method

.method public isUserActive()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mUserActive:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 125
    iget-object p2, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    .line 125
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mUserActive:Z

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    .line 133
    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 135
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mUserActive:Z

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 120
    return-void
.end method

.method public removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method protected setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    .line 192
    iput-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isInMultiWindowModeCompat()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 195
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 197
    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 199
    :cond_0
    return-void
.end method
