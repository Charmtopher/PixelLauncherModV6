.class public final synthetic Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$N4YlzUmBPkqf317Di_jCKDNcDyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/ButtonDropTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/ButtonDropTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$N4YlzUmBPkqf317Di_jCKDNcDyE;->f$0:Lcom/android/launcher3/ButtonDropTarget;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$N4YlzUmBPkqf317Di_jCKDNcDyE;->f$0:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->lambda$animateTextColor$0(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method
