.class final Landroid/support/v4/app/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fN:Ljava/util/ArrayList;

.field final synthetic fO:Ljava/lang/Object;

.field final synthetic fP:Landroid/support/v4/app/ac;

.field final synthetic fQ:Landroid/view/View;

.field final synthetic fR:Landroid/support/v4/app/Fragment;

.field final synthetic fS:Ljava/util/ArrayList;

.field final synthetic fT:Ljava/util/ArrayList;

.field final synthetic fU:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/app/ac;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 392
    iput-object p1, p0, Landroid/support/v4/app/T;->fO:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/T;->fP:Landroid/support/v4/app/ac;

    iput-object p3, p0, Landroid/support/v4/app/T;->fQ:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/T;->fR:Landroid/support/v4/app/Fragment;

    iput-object p5, p0, Landroid/support/v4/app/T;->fS:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/T;->fT:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/T;->fN:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/support/v4/app/T;->fU:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 395
    iget-object v0, p0, Landroid/support/v4/app/T;->fO:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/v4/app/T;->fP:Landroid/support/v4/app/ac;

    iget-object v1, p0, Landroid/support/v4/app/T;->fO:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/T;->fQ:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ac;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Landroid/support/v4/app/T;->fP:Landroid/support/v4/app/ac;

    iget-object v1, p0, Landroid/support/v4/app/T;->fO:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/T;->fR:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/T;->fS:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/T;->fQ:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/ac;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 400
    iget-object v1, p0, Landroid/support/v4/app/T;->fT:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/T;->fN:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Landroid/support/v4/app/T;->fU:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    iget-object v1, p0, Landroid/support/v4/app/T;->fQ:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Landroid/support/v4/app/T;->fP:Landroid/support/v4/app/ac;

    iget-object v2, p0, Landroid/support/v4/app/T;->fU:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/T;->fN:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/ac;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 410
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/T;->fN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 411
    iget-object v0, p0, Landroid/support/v4/app/T;->fN:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/T;->fQ:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_2
    return-void
.end method
