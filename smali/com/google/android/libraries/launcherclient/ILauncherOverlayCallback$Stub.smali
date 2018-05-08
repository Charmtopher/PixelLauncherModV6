.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction$3d31fa39(ILandroid/os/Parcel;)Z
    .locals 0

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 64
    const/4 p1, 0x0

    return p1

    .line 59
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayStatusChanged(I)V

    .line 61
    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayScrollChanged(F)V

    .line 56
    nop

    .line 67
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
