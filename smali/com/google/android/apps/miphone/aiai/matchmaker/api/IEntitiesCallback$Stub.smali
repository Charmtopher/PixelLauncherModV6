.class public abstract Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "com.google.android.apps.miphone.aiai.matchmaker.api.IEntitiesCallback"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction$3d31fa39(ILandroid/os/Parcel;)Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 51
    sget-object p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback$Stub;->onFinished(Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)V

    .line 53
    return v0

    .line 55
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
