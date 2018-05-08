.class Lcom/android/launcher3/allapps/WorkModeSwitch$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/WorkModeSwitch;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/WorkModeSwitch;Z)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch$1;->this$0:Lcom/android/launcher3/allapps/WorkModeSwitch;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/WorkModeSwitch$1;->val$enabled:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 64
    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch$1;->this$0:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/allapps/WorkModeSwitch$1;->val$enabled:Z

    invoke-virtual {p1, v3, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 64
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch$1;->this$0:Lcom/android/launcher3/allapps/WorkModeSwitch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch$1;->this$0:Lcom/android/launcher3/allapps/WorkModeSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setEnabled(Z)V

    .line 70
    return-void
.end method
