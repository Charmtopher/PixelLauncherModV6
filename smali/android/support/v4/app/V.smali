.class final Landroid/support/v4/app/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fO:Ljava/lang/Object;

.field final synthetic fP:Landroid/support/v4/app/ac;

.field final synthetic fQ:Landroid/view/View;

.field final synthetic fR:Landroid/support/v4/app/Fragment;

.field final synthetic fS:Ljava/util/ArrayList;

.field final synthetic fV:Landroid/support/v4/app/Fragment;

.field final synthetic fW:Z

.field final synthetic ga:Landroid/support/v4/c/a;

.field final synthetic gb:Ljava/lang/Object;

.field final synthetic gc:Landroid/support/v4/app/W;

.field final synthetic gd:Ljava/util/ArrayList;

.field final synthetic ge:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 734
    iput-object p1, p0, Landroid/support/v4/app/V;->fP:Landroid/support/v4/app/ac;

    iput-object p2, p0, Landroid/support/v4/app/V;->ga:Landroid/support/v4/c/a;

    iput-object p3, p0, Landroid/support/v4/app/V;->gb:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/V;->gc:Landroid/support/v4/app/W;

    iput-object p5, p0, Landroid/support/v4/app/V;->fS:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/V;->fQ:Landroid/view/View;

    iput-object p7, p0, Landroid/support/v4/app/V;->fR:Landroid/support/v4/app/Fragment;

    iput-object p8, p0, Landroid/support/v4/app/V;->fV:Landroid/support/v4/app/Fragment;

    iput-boolean p9, p0, Landroid/support/v4/app/V;->fW:Z

    iput-object p10, p0, Landroid/support/v4/app/V;->gd:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/support/v4/app/V;->fO:Ljava/lang/Object;

    iput-object p12, p0, Landroid/support/v4/app/V;->ge:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 737
    iget-object v0, p0, Landroid/support/v4/app/V;->fP:Landroid/support/v4/app/ac;

    iget-object v1, p0, Landroid/support/v4/app/V;->ga:Landroid/support/v4/c/a;

    iget-object v2, p0, Landroid/support/v4/app/V;->gb:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/V;->gc:Landroid/support/v4/app/W;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/R;->c(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_0

    .line 741
    iget-object v1, p0, Landroid/support/v4/app/V;->fS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 742
    iget-object v1, p0, Landroid/support/v4/app/V;->fS:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/V;->fQ:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/V;->fR:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/V;->fV:Landroid/support/v4/app/Fragment;

    iget-boolean v3, p0, Landroid/support/v4/app/V;->fW:Z

    invoke-static {v1, v2, v3, v0}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    .line 747
    iget-object v1, p0, Landroid/support/v4/app/V;->gb:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Landroid/support/v4/app/V;->fP:Landroid/support/v4/app/ac;

    iget-object v2, p0, Landroid/support/v4/app/V;->gb:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/V;->gd:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/V;->fS:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 752
    iget-object v1, p0, Landroid/support/v4/app/V;->gc:Landroid/support/v4/app/W;

    iget-object v2, p0, Landroid/support/v4/app/V;->fO:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/V;->fW:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/R;->b(Landroid/support/v4/c/a;Landroid/support/v4/app/W;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_1

    .line 755
    iget-object v1, p0, Landroid/support/v4/app/V;->fP:Landroid/support/v4/app/ac;

    iget-object v2, p0, Landroid/support/v4/app/V;->ge:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/ac;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 759
    :cond_1
    return-void
.end method
