.class public abstract Lcom/google/android/aidl/BaseStub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    invoke-virtual {p0, p0, p1}, Lcom/google/android/aidl/BaseStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 22
    return-object p0
.end method

.method public dispatchTransaction$3d31fa39(ILandroid/os/Parcel;)Z
    .locals 0

    .line 53
    const/4 p1, 0x0

    return p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 45
    const v0, 0xffffff

    if-le p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/aidl/BaseStub;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 46
    const/4 p1, 0x1

    return p1

    .line 48
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/aidl/BaseStub;->dispatchTransaction$3d31fa39(ILandroid/os/Parcel;)Z

    move-result p1

    return p1
.end method
