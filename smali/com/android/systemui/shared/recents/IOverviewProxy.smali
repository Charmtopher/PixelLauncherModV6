.class public interface abstract Lcom/android/systemui/shared/recents/IOverviewProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onBind(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onOverviewHidden(ZZ)V
.end method

.method public abstract onOverviewShown(Z)V
.end method

.method public abstract onOverviewToggle()V
.end method

.method public abstract onPreMotionEvent(I)V
.end method

.method public abstract onQuickScrubEnd()V
.end method

.method public abstract onQuickScrubProgress(F)V
.end method

.method public abstract onQuickScrubStart()V
.end method

.method public abstract onQuickStep(Landroid/view/MotionEvent;)V
.end method
