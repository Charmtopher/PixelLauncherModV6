.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field final synthetic val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {v0}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationCanceled()V

    .line 241
    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 224
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    .line 225
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->onAnimationStart_New(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 226
    return-void
.end method

.method public onAnimationStart_New(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 231
    new-instance v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    .line 233
    nop

    .line 234
    invoke-static {p2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {p2, v0, p1, p3, p4}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 237
    return-void
.end method
