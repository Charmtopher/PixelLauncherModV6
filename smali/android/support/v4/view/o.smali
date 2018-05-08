.class final Landroid/support/v4/view/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic kk:Landroid/support/v4/view/l;


# direct methods
.method constructor <init>(Landroid/support/v4/view/l;)V
    .locals 0

    .line 2198
    iput-object p1, p0, Landroid/support/v4/view/o;->kk:Landroid/support/v4/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 2202
    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 2203
    move-object v0, p1

    goto :goto_0

    .line 2202
    :cond_0
    new-instance v0, Landroid/support/v4/view/z;

    invoke-direct {v0, p2}, Landroid/support/v4/view/z;-><init>(Ljava/lang/Object;)V

    .line 2203
    :goto_0
    iget-object p2, p0, Landroid/support/v4/view/o;->kk:Landroid/support/v4/view/l;

    invoke-interface {p2, v0}, Landroid/support/v4/view/l;->a(Landroid/support/v4/view/z;)Landroid/support/v4/view/z;

    move-result-object p2

    .line 2204
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p2, Landroid/support/v4/view/z;->lo:Ljava/lang/Object;

    :goto_1
    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
