.class public Lcom/google/android/apps/nexuslauncher/qsb/h;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method public static final i(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 48
    nop

    .line 50
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    const-string v2, "title_google_home_screen"

    const-string v3, "string"

    const-string v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    move-object v0, v1

    :cond_0
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 60
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_1
    const v1, 0x7f0c00b3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 26
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 28
    nop

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 30
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->xb:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->wV:Lcom/google/android/apps/nexuslauncher/e;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/e;->xe:Z

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f0c00b3

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 34
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 38
    const v0, 0x7f0c00b3

    if-ne p2, v0, :cond_0

    .line 39
    nop

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 41
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->xb:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->wT:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->K(Z)V

    .line 42
    return p2

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
