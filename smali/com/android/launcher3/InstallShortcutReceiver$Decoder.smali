.class Lcom/android/launcher3/InstallShortcutReceiver$Decoder;
.super Lorg/json/JSONObject;
.source "SourceFile"


# instance fields
.field public final launcherIntent:Landroid/content/Intent;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 595
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 596
    const-string p1, "intent.launch"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    .line 597
    const-string p1, "userHandle"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    nop

    .line 597
    invoke-static {p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    const-string p2, "userHandle"

    .line 598
    invoke-virtual {p0, p2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    .line 600
    iget-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    if-eqz p1, :cond_1

    .line 603
    return-void

    .line 601
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Invalid user"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;B)V
    .locals 0

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
