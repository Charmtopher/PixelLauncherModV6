.class public Lcom/android/launcher3/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFlags:I

.field private final mProviderChangeListeners:Ljava/util/ArrayList;

.field private final mViews:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    .line 62
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic lambda$sendActionCancelled$0(Lcom/android/launcher3/BaseActivity;I)V
    .locals 2

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final addProviderChangeListener(Lcom/android/launcher3/LauncherAppWidgetHost$ProviderChangedListener;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public allocateAppWidgetId()I
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    return v0
.end method

.method public clearViews()V
    .locals 1

    .line 240
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 242
    return-void
.end method

.method public final createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .line 185
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance p2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {p2, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 187
    const-string v0, "layout_inflater"

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 189
    iget v0, p3, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 190
    const/4 p1, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 191
    return-object p2

    .line 192
    :cond_0
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 195
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    return-object v0

    .line 199
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 200
    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 209
    if-nez p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->onCreateView$570417a3(Landroid/content/Context;I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    .line 212
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 213
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->switchToErrorView()V

    .line 214
    return-object p1

    .line 202
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public deleteAppWidgetId(I)V
    .locals 1

    .line 234
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 236
    return-void
.end method

.method protected synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->onCreateView$570417a3(Landroid/content/Context;I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    return-object p1
.end method

.method protected final onCreateView$570417a3(Landroid/content/Context;I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 1

    .line 68
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p2

    .line 226
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 229
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method protected onProvidersChanged()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetHost$ProviderChangedListener;

    .line 178
    invoke-interface {v1}, Lcom/android/launcher3/LauncherAppWidgetHost$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    .line 179
    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public final removeProviderChangeListener(Lcom/android/launcher3/LauncherAppWidgetHost$ProviderChangedListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public final setListenIfResumed(Z)V
    .locals 1

    .line 138
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_2

    .line 142
    return-void

    .line 144
    :cond_2
    if-eqz p1, :cond_3

    .line 145
    iget p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    .line 146
    iget p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    return-void

    .line 153
    :cond_3
    iget p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V

    .line 156
    :cond_4
    return-void
.end method

.method public final startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 2

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    .line 253
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "appWidgetProvider"

    iget-object v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 254
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "appWidgetProviderProfile"

    .line 255
    invoke-virtual {p3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    .line 258
    invoke-virtual {p1, p2, p4}, Lcom/android/launcher3/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 259
    return-void
.end method

.method public final startConfigActivity(Lcom/android/launcher3/BaseActivity;II)V
    .locals 6

    .line 269
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-void

    .line 270
    :catch_0
    move-exception p2

    .line 271
    const p2, 0x7f0c0023

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 272
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/launcher3/-$$Lambda$LauncherAppWidgetHost$bo_Aea8BPKolyYi4d072d4Fwf-o;

    invoke-direct {v0, p1, p3}, Lcom/android/launcher3/-$$Lambda$LauncherAppWidgetHost$bo_Aea8BPKolyYi4d072d4Fwf-o;-><init>(Lcom/android/launcher3/BaseActivity;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method public startListening()V
    .locals 3

    .line 78
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    .line 80
    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 94
    instance-of v2, v1, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    .line 92
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 98
    :cond_1
    return-void

    .line 83
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 1

    .line 105
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    .line 106
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 107
    return-void
.end method
