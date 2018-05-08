.class public final synthetic Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$Z_XONGZw1Qjdi0BQdkUZpYybff4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/util/ListViewHighlighter;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ListViewHighlighter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$Z_XONGZw1Qjdi0BQdkUZpYybff4;->f$0:Lcom/android/launcher3/util/ListViewHighlighter;

    iput-object p2, p0, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$Z_XONGZw1Qjdi0BQdkUZpYybff4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$Z_XONGZw1Qjdi0BQdkUZpYybff4;->f$0:Lcom/android/launcher3/util/ListViewHighlighter;

    iget-object v1, p0, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$Z_XONGZw1Qjdi0BQdkUZpYybff4;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/ListViewHighlighter;->lambda$highlightView$0(Lcom/android/launcher3/util/ListViewHighlighter;Landroid/view/View;)V

    return-void
.end method
