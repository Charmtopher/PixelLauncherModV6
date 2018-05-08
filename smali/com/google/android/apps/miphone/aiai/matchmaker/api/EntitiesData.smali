.class public Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

.field public final rU:Ljava/util/Map;

.field public final rV:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/b;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/b;-><init>()V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    .line 111
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rU:Ljava/util/Map;

    .line 112
    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rV:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public static c(Landroid/os/Parcel;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;
    .locals 4

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 56
    :try_start_0
    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    invoke-direct {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;-><init>()V

    invoke-static {v1, v0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    iget-boolean v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tK:Z

    if-eqz v2, :cond_0

    .line 63
    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 66
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 67
    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    iget-boolean v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tJ:Z

    if-eqz v3, :cond_1

    .line 68
    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 70
    :cond_1
    new-instance p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;Ljava/util/Map;Ljava/util/Map;)V

    return-object p0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance v0, Landroid/os/ParcelFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x26

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid attempt to read entities data "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string v0, "Invalid attempt to read Entities proto"

    invoke-direct {p0, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    invoke-static {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 81
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iget-object p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    if-eqz p2, :cond_1

    .line 82
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iget-object p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    iget-boolean p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tK:Z

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rU:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iget-object p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tt:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;

    iget-boolean p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/F;->tJ:Z

    if-eqz p2, :cond_1

    .line 86
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rV:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 89
    :cond_1
    return-void
.end method
