.class public Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 270
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 271
    return-void
.end method


# virtual methods
.method public final closeOverlay(I)V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 323
    return-void
.end method

.method public final endScroll()V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 290
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 329
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 335
    return-void
.end method

.method public final onScroll(F)V
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 283
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 284
    return-void
.end method

.method public final openOverlay(I)V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 349
    return-void
.end method

.method public final setActivityState(I)V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 342
    return-void
.end method

.method public final startScroll()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 277
    return-void
.end method

.method public final startSearch([BLandroid/os/Bundle;)Z
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 389
    invoke-static {v0, p2}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 390
    const/16 p1, 0x11

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 391
    invoke-static {p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 393
    return p2
.end method

.method public final windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 297
    invoke-static {v0, p2}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 298
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 300
    return-void
.end method

.method public final windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 307
    invoke-static {v0, p2}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 308
    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 309
    return-void
.end method

.method public final windowDetached(Z)V
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 314
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Z)V

    .line 315
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 316
    return-void
.end method
