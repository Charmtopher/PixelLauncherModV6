.class public Lcom/google/android/apps/nexuslauncher/smartspace/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final EZ:J

.field public final Fa:Landroid/content/pm/PackageInfo;

.field public final Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

.field public final Fc:Z

.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/a/d;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    .line 31
    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fc:Z

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->intent:Landroid/content/Intent;

    .line 33
    iput-wide p4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->EZ:J

    .line 34
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fa:Landroid/content/pm/PackageInfo;

    .line 35
    return-void
.end method


# virtual methods
.method public final o(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    .line 39
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    return-object v1

    .line 44
    :cond_0
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Landroid/graphics/Bitmap;

    .line 45
    if-eqz v2, :cond_2

    .line 46
    return-object v2

    .line 50
    :cond_2
    :try_start_0
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 51
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 52
    nop

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 52
    return-object p1

    .line 54
    :cond_3
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 55
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 56
    const-string v3, "com.google.android.googlequicksearchbox"

    iput-object v3, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 57
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 62
    iget-object p1, v2, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 66
    :cond_4
    goto :goto_1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    const-string p1, "NewCardInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retrieving bitmap uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->tN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsaRes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;->Gj:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    return-object v1
.end method
