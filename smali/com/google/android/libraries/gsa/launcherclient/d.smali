.class Lcom/google/android/libraries/gsa/launcherclient/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic aeI:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->aeI:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 157
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->aeI:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/i;->il()V

    .line 160
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->aeI:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/a;->il()V

    .line 161
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->L(Landroid/content/Context;)V

    .line 162
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->aeI:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->aeI:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    .line 166
    :cond_1
    return-void
.end method
