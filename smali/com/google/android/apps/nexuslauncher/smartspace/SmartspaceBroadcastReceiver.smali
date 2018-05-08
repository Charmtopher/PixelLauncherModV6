.class public Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 32
    const-string v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CARD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    if-eqz v0, :cond_6

    .line 34
    new-instance v1, Lcom/google/android/apps/nexuslauncher/smartspace/a/c;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/a/c;-><init>()V

    .line 36
    :try_start_0
    invoke-static {v1, v0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    .line 37
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/a/c;->FT:[Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    .line 38
    iget v4, v5, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 40
    move v7, v6

    goto :goto_1

    .line 38
    :cond_0
    nop

    .line 40
    move v7, v2

    :goto_1
    iget v4, v5, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_1

    goto :goto_2

    .line 42
    :cond_1
    move v6, v2

    :goto_2
    if-nez v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    .line 45
    :cond_2
    const-string v4, "SmartspaceReceiver"

    const-string v5, "unrecognized card priority"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 43
    :cond_3
    :goto_3
    iget-boolean v4, v5, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FV:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->p(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a;)V

    goto :goto_5

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v10, "com.google.android.googlequicksearchbox"

    invoke-virtual {v4, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v4

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v10, v6

    :goto_4
    :try_start_2
    new-instance v11, Lcom/google/android/apps/nexuslauncher/smartspace/a;

    move-object v4, v11

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/nexuslauncher/smartspace/a;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/a/d;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->p(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a;)V
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 37
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_5
    return-void

    .line 48
    :catch_1
    move-exception p1

    .line 49
    const-string p2, "SmartspaceReceiver"

    const-string v0, "proto"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-void

    .line 52
    :cond_6
    const-string p1, "SmartspaceReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiving update with no proto: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
