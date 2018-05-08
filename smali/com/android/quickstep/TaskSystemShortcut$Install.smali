.class public Lcom/android/quickstep/TaskSystemShortcut$Install;
.super Lcom/android/quickstep/TaskSystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 249
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$Install;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$Install;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TaskSystemShortcut;-><init>(Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected getOnClickListenerForTask(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 255
    invoke-static {p1}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v0

    .line 256
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 255
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 257
    iget-object p2, p0, Lcom/android/quickstep/TaskSystemShortcut$Install;->mSystemShortcut:Lcom/android/launcher3/popup/SystemShortcut;

    check-cast p2, Lcom/android/launcher3/popup/SystemShortcut$Install;

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/popup/SystemShortcut$Install;->createOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 259
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
