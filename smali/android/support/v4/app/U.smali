.class final Landroid/support/v4/app/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fP:Landroid/support/v4/app/ac;

.field final synthetic fR:Landroid/support/v4/app/Fragment;

.field final synthetic fV:Landroid/support/v4/app/Fragment;

.field final synthetic fW:Z

.field final synthetic fX:Landroid/support/v4/c/a;

.field final synthetic fY:Landroid/view/View;

.field final synthetic fZ:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;Landroid/view/View;Landroid/support/v4/app/ac;Landroid/graphics/Rect;)V
    .locals 0

    .line 622
    iput-object p1, p0, Landroid/support/v4/app/U;->fR:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/U;->fV:Landroid/support/v4/app/Fragment;

    iput-boolean p3, p0, Landroid/support/v4/app/U;->fW:Z

    iput-object p4, p0, Landroid/support/v4/app/U;->fX:Landroid/support/v4/c/a;

    iput-object p5, p0, Landroid/support/v4/app/U;->fY:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/U;->fP:Landroid/support/v4/app/ac;

    iput-object p7, p0, Landroid/support/v4/app/U;->fZ:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/U;->fR:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/U;->fV:Landroid/support/v4/app/Fragment;

    iget-boolean v2, p0, Landroid/support/v4/app/U;->fW:Z

    iget-object v3, p0, Landroid/support/v4/app/U;->fX:Landroid/support/v4/c/a;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    .line 627
    iget-object v0, p0, Landroid/support/v4/app/U;->fY:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/support/v4/app/U;->fP:Landroid/support/v4/app/ac;

    iget-object v1, p0, Landroid/support/v4/app/U;->fY:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/U;->fZ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ac;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 630
    :cond_0
    return-void
.end method
