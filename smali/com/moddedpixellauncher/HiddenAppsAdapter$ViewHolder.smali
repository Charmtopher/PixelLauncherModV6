.class Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HiddenAppsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moddedpixellauncher/HiddenAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private icon:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private listener:Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

.field private mPosition:I

.field final synthetic this$0:Lcom/moddedpixellauncher/HiddenAppsAdapter;


# direct methods
.method constructor <init>(Lcom/moddedpixellauncher/HiddenAppsAdapter;Landroid/view/View;Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/moddedpixellauncher/HiddenAppsAdapter;
    .param p2, "itemLayoutView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->this$0:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p3, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->listener:Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

    .line 112
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 113
    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 114
    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 116
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->bind()V

    return-void
.end method

.method private bind()V
    .locals 4

    .prologue
    .line 132
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->this$0:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-static {v1}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->access$100(Lcom/moddedpixellauncher/HiddenAppsAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->mPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "component":Ljava/lang/String;
    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->this$0:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-static {v1}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->access$100(Lcom/moddedpixellauncher/HiddenAppsAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->mPosition:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->this$0:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-static {v1}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->access$100(Lcom/moddedpixellauncher/HiddenAppsAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->mPosition:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->this$0:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-virtual {v2, v0}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->listener:Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->listener:Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

    iget v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->mPosition:I

    invoke-interface {v0, v1}, Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;->onItemClicked(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->mPosition:I

    .line 128
    invoke-direct {p0}, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->bind()V

    .line 129
    return-void
.end method
