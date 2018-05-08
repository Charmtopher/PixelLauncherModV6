.class public Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->access$302(Lcom/android/launcher3/pageindicators/PageIndicatorDots;[F)[F

    .line 210
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidateOutline()V

    .line 211
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 212
    return-void
.end method
