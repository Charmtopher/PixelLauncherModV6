.class Lcom/google/android/apps/nexuslauncher/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/h;->xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 217
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/h;->xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 218
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/h;->xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "reflection.events"

    .line 219
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 221
    :try_start_0
    invoke-static {p2, p1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity;->b(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 223
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    const-string v0, "text/plain"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "android.intent.extra.EMAIL"

    const-string v1, "gnl-user-data-share@google.com"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v0, "android.intent.extra.SUBJECT"

    const-string v1, "database"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v0, "android.intent.extra.TEXT"

    const-string v1, "database is included."

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;

    .line 232
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/h;->xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;

    .line 233
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->getActivity()Landroid/app/Activity;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 234
    nop

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "application/json"

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 240
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x1

    .line 235
    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide v1

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p1

    .line 242
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 243
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/h;->xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;

    const-string v0, "Send email..."

    invoke-static {p2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void

    .line 229
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "file doesn\'t exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :catch_0
    move-exception p1

    .line 245
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/h;->xl:Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Send failed!"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 247
    return-void
.end method
