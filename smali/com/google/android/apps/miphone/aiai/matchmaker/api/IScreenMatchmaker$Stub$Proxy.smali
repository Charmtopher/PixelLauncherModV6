.class public Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 116
    const-string v0, "com.google.android.apps.miphone.aiai.matchmaker.api.IScreenMatchmaker"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public final extractContentAsync(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/InteractionContextData;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IContentCallback;)Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    invoke-static {v0, p3}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 127
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    invoke-static {v0, p6}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 129
    invoke-static {v0, p7}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 130
    invoke-static {v0, p8}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 131
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-object p2
.end method

.method public final getEntitiesAsync(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback;)Ljava/lang/String;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    invoke-static {v0, p3}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 145
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    invoke-static {v0, p6}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 147
    invoke-static {v0, p7}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 148
    invoke-static {v0, p8}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 149
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 152
    return-object p2
.end method

.method public final registerSettingsCallback(Lcom/google/android/apps/miphone/aiai/matchmaker/api/ISettingsCallback;)Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 160
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 161
    invoke-static {p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 163
    return v0
.end method

.method public final reportFeedback(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    invoke-static {v0, p2}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2
.end method
