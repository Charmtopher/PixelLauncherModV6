.class Landroid/support/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic aO:Landroid/support/a/g;


# direct methods
.method constructor <init>(Landroid/support/a/g;)V
    .locals 0

    .line 200
    iput-object p1, p0, Landroid/support/a/h;->aO:Landroid/support/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 203
    iget-object p1, p0, Landroid/support/a/h;->aO:Landroid/support/a/g;

    iget-object p1, p1, Landroid/support/a/g;->aJ:Landroid/support/a/b;

    invoke-virtual {p1}, Landroid/support/a/b;->r()V

    .line 204
    return-void
.end method
