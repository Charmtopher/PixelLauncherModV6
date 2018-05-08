.class public abstract Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/recents/IOverviewProxy;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.recents.IOverviewProxy"

.field static final TRANSACTION_onBind:I = 0x1

.field static final TRANSACTION_onMotionEvent:I = 0x3

.field static final TRANSACTION_onOverviewHidden:I = 0x9

.field static final TRANSACTION_onOverviewShown:I = 0x8

.field static final TRANSACTION_onOverviewToggle:I = 0x7

.field static final TRANSACTION_onPreMotionEvent:I = 0x2

.field static final TRANSACTION_onQuickScrubEnd:I = 0x5

.field static final TRANSACTION_onQuickScrubProgress:I = 0x6

.field static final TRANSACTION_onQuickScrubStart:I = 0x4

.field static final TRANSACTION_onQuickStep:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 2

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 38
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 39
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    goto :goto_0

    .line 127
    :cond_0
    nop

    .line 129
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onQuickStep(Landroid/view/MotionEvent;)V

    .line 130
    return v2

    .line 111
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    move p1, v2

    goto :goto_1

    .line 113
    :cond_1
    nop

    .line 115
    move p1, v3

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    .line 116
    move v3, v2

    goto :goto_2

    .line 115
    :cond_2
    nop

    .line 116
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewHidden(ZZ)V

    .line 117
    return v2

    .line 103
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    move v3, v2

    goto :goto_3

    .line 105
    :cond_3
    nop

    .line 106
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewShown(Z)V

    .line 107
    return v2

    .line 97
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewToggle()V

    .line 99
    return v2

    .line 89
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onQuickScrubProgress(F)V

    .line 93
    return v2

    .line 83
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onQuickScrubEnd()V

    .line 85
    return v2

    .line 77
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onQuickScrubStart()V

    .line 79
    return v2

    .line 64
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 67
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    goto :goto_4

    .line 70
    :cond_4
    nop

    .line 72
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 73
    return v2

    .line 56
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onPreMotionEvent(I)V

    .line 60
    return v2

    .line 48
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onBind(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    .line 52
    return v2

    .line 43
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
