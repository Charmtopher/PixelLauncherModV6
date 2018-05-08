.class public Lcom/google/android/apps/nexuslauncher/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e/f;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/protobuf/nano/g;)Z
    .locals 2

    .line 46
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e/f;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object p1

    .line 47
    invoke-static {p2, p1}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 p1, 0x1

    return p1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    const-string p2, "ProtoStore"

    const-string v1, "unable to load data"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    return v0

    .line 49
    :catch_1
    move-exception p1

    .line 50
    const-string p1, "ProtoStore"

    const-string p2, "no cached data"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v0
.end method
