.class public interface abstract Lcom/android/quickstep/ActivityControlHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;
.end method

.method public abstract createControllerForHiddenActivity(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end method

.method public abstract createControllerForVisibleActivity(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end method

.method public abstract createLayoutListener(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/quickstep/ActivityControlHelper$LayoutListener;
.end method

.method public abstract deferStartingActivity(I)Z
.end method

.method public abstract executeOnNextDraw(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Ljava/lang/Runnable;)V
.end method

.method public abstract executeOnWindowAvailable(Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Runnable;)V
.end method

.method public abstract getCreatedActivity()Lcom/android/launcher3/BaseDraggingActivity;
.end method

.method public abstract getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
.end method

.method public abstract getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I
.end method

.method public abstract getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
.end method

.method public abstract onQuickInteractionStart(Lcom/android/launcher3/BaseDraggingActivity;Z)Z
.end method

.method public abstract onQuickstepGestureStarted(Lcom/android/launcher3/BaseDraggingActivity;Z)V
.end method

.method public abstract onSwipeUpComplete(Lcom/android/launcher3/BaseDraggingActivity;)V
.end method

.method public abstract onTransitionCancelled(Lcom/android/launcher3/BaseDraggingActivity;Z)V
.end method

.method public abstract prepareRecentsUI(Lcom/android/launcher3/BaseDraggingActivity;Z)V
.end method

.method public abstract shouldMinimizeSplitScreen()Z
.end method

.method public abstract switchToRecentsIfVisible()Z
.end method
