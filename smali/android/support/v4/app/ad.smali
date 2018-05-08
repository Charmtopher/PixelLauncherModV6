.class Landroid/support/v4/app/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fS:Ljava/util/ArrayList;

.field final synthetic gd:Ljava/util/ArrayList;

.field final synthetic go:I

.field final synthetic gp:Ljava/util/ArrayList;

.field final synthetic gq:Ljava/util/ArrayList;

.field final synthetic gr:Landroid/support/v4/app/ac;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ac;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 169
    iput-object p1, p0, Landroid/support/v4/app/ad;->gr:Landroid/support/v4/app/ac;

    iput p2, p0, Landroid/support/v4/app/ad;->go:I

    iput-object p3, p0, Landroid/support/v4/app/ad;->fS:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/ad;->gp:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/ad;->gd:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/ad;->gq:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 172
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v4/app/ad;->go:I

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Landroid/support/v4/app/ad;->fS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/ad;->gp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Landroid/support/v4/app/ad;->gd:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/ad;->gq:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method
