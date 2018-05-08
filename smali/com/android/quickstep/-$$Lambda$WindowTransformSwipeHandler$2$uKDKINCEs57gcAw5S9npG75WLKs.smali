.class public final synthetic Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$2$uKDKINCEs57gcAw5S9npG75WLKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/WindowTransformSwipeHandler$2;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$2$uKDKINCEs57gcAw5S9npG75WLKs;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler$2;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$2$uKDKINCEs57gcAw5S9npG75WLKs;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$2$uKDKINCEs57gcAw5S9npG75WLKs;->f$0:Lcom/android/quickstep/WindowTransformSwipeHandler$2;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$2$uKDKINCEs57gcAw5S9npG75WLKs;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->lambda$onDraw$0(Lcom/android/quickstep/WindowTransformSwipeHandler$2;Landroid/view/View;)V

    return-void
.end method
