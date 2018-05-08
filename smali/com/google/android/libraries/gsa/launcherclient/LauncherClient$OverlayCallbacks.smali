.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;
.super Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private final uIHandler:Landroid/os/Handler;

.field public window:Landroid/view/Window;

.field private windowHidden:Z

.field public windowManager:Landroid/view/WindowManager;

.field windowShift:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 809
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;-><init>()V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowHidden:Z

    .line 810
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->uIHandler:Landroid/os/Handler;

    .line 811
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 845
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 847
    return v1

    .line 849
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 885
    return v2

    .line 876
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V

    .line 877
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/b;

    move-result-object v0

    const-string v2, "stateChanged"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 879
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/g;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/libraries/gsa/launcherclient/h;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/gsa/launcherclient/h;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/h;->aw(I)V

    .line 882
    :cond_1
    return v1

    .line 865
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 866
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 867
    iget p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowShift:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 868
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 870
    :cond_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 871
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 873
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    return v1

    .line 851
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 852
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 853
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/g;->onOverlayScrollChanged(F)V

    .line 855
    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_3

    .line 856
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/b;

    move-result-object p1

    const-string v3, "onScroll 0, overlay closed"

    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    goto :goto_1

    .line 857
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    .line 858
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/b;

    move-result-object p1

    const-string v3, "onScroll 1, overlay opened"

    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    goto :goto_1

    .line 860
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/b;

    move-result-object v0

    const-string v2, "onScroll"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 863
    :cond_5
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final overlayScrollChanged(F)V
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->uIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->uIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 833
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 834
    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowHidden:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowHidden:Z

    .line 836
    :cond_0
    return-void
.end method

.method public final overlayStatusChanged(I)V
    .locals 3

    .line 840
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->uIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 841
    return-void
.end method
