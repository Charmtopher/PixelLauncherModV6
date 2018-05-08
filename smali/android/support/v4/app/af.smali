.class Landroid/support/v4/app/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fS:Ljava/util/ArrayList;

.field final synthetic gr:Landroid/support/v4/app/ac;

.field final synthetic gs:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ac;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroid/support/v4/app/af;->gr:Landroid/support/v4/app/ac;

    iput-object p2, p0, Landroid/support/v4/app/af;->fS:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/support/v4/app/af;->gs:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 295
    iget-object v0, p0, Landroid/support/v4/app/af;->fS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 296
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 297
    iget-object v2, p0, Landroid/support/v4/app/af;->fS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 298
    invoke-static {v2}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 299
    iget-object v4, p0, Landroid/support/v4/app/af;->gs:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    invoke-static {v2, v3}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method
