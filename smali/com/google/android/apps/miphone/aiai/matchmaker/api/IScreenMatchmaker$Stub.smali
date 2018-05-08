.class public abstract Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;
    .locals 2

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    const-string v0, "com.google.android.apps.miphone.aiai.matchmaker.api.IScreenMatchmaker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
